# R 4.6.1 on Ubuntu 24.04 (Rocker devcontainer image), pinned by digest on 2026-10-09.
FROM ghcr.io/rocker-org/devcontainer/r-ver:4.6@sha256:1660ee0beba698f16c84b9bdeba7014c09c9e9588ee307174f6b9f53a6276c4f

# Every package comes from the 2026-10-08 snapshot of CRAN, so every codespace gets the same versions.
# tidyverse and effectsize are the course packages; the other four let the R extension's helper install without a download.
# install.packages() can fail and still exit 0, so the last line fails the build unless both course packages load.
RUN install2.r --error --skipinstalled --ncpus -1 \
      --repos https://p3m.dev/cran/__linux__/noble/2026-10-08 \
      tidyverse effectsize processx later jsonlite rstudioapi \
 && Rscript -e 'library(tidyverse); library(effectsize); stopifnot(packageVersion("tidyverse") == "2.0.0", packageVersion("effectsize") == "1.0.3")'
