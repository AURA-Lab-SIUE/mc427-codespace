# Module 6 Data Task: Compute the Funnel and Chart It
# MC 427 Social Media Analytics
#
# How to use this file: open it in VS Code with your MC427 folder open and the R terminal
# started, then run one line at a time with Ctrl+Enter (Command+Return on a Mac).
# The comment above each line says what it does and what should print.
# nms-steam-monthly-players-2016-2026.csv is already at the top level of your course folder
# (it comes with the course template; if it is missing, download it from the Module 3 Client Scenario item).

# Load the course packages. Prints nine package names and two Conflicts lines; that is normal.
library(tidyverse)

# Load the file. Prints "Rows: 122 Columns: 5" and the column types.
players <- read_csv("nms-steam-monthly-players-2016-2026.csv")

# Keep one month's row and pull out its average player count. Nothing prints.
# The month before the Frontiers update:
before <- players %>% filter(month == "August 2021") %>% pull(avg_players)
# The update month:
during <- players %>% filter(month == "September 2021") %>% pull(avg_players)
# The month after:
after <- players %>% filter(month == "October 2021") %>% pull(avg_players)

# The return multiple: how many times more players the update month had. Expected: [1] 3.49
round(during / before, 2)

# The kept rate: the month after as a percent of the update month. Expected: [1] 48.1
round(100 * after / during, 1)

# A small table of the three numbers, one row per month, kept in the order typed.
# These two lines are one command; run them together.
funnel <- tibble(month = c("August", "September", "October"), players = c(before, during, after)) %>%
  mutate(month = fct_inorder(month))

# Draw the chart: one bar per month. It opens in a VS Code panel.
ggplot(funnel, aes(x = month, y = players)) + geom_col()

# Save the most recent chart to a picture file in your MC427 folder. Prints "Saving 7 x 7 in image".
ggsave("frontiers-funnel.png")

# Before this chart goes in your deck, give it a title and alt text: the R Companion's Bar chart
# (Write R code, Describe group) writes labs() with both.

# YOUR TURN (Read it like an analyst): change the three months to July, August and September 2019
# and the kept rate for Beyond prints 43.8. Add your lines below this comment.


# Break it on purpose: the month is misspelled. Expected: numeric(0), and no error.
players %>% filter(month == "Sept 2021") %>% pull(avg_players)
