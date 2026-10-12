# MC 427 setup check. Run it by name in the R terminal: source("mc427-setup-check.R")
ok <- TRUE
cat("R version: ", R.version$major, ".", R.version$minor, "\n", sep = "")
if (getRversion() < "4.2.0") { cat("PROBLEM: R is older than 4.2. Install the current R.\n"); ok <- FALSE }
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  cat("PROBLEM: the tidyverse package is missing. Run: install.packages(\"tidyverse\", repos = \"https://cloud.r-project.org\")\n"); ok <- FALSE
}
if (!requireNamespace("effectsize", quietly = TRUE)) {
  cat("PROBLEM: the effectsize package is missing. Run: install.packages(\"effectsize\", repos = \"https://cloud.r-project.org\")\n"); ok <- FALSE
}
if (ok) {
  cars <- dplyr::mutate(mtcars, am = factor(am, labels = c("automatic", "manual")))
  t_res <- t.test(mpg ~ am, data = cars)
  d_res <- effectsize::cohens_d(mpg ~ am, data = cars)
  x_res <- suppressWarnings(chisq.test(xtabs(~ am + cyl, data = cars)))
  l_res <- summary(lm(mpg ~ wt, data = cars))
  cat("t-test p-value:", signif(t_res$p.value, 3), "\n")
  cat("Cohen's d:", round(d_res$Cohens_d, 2), "\n")
  cat("Chi-square df:", x_res$parameter, "\n")
  cat("Regression R-squared:", round(l_res$r.squared, 2), "\n")
  cat("SETUP OK: R and the course packages are working.\n")
} else {
  cat("SETUP NOT READY: fix the PROBLEM line(s) above.\n")
}
