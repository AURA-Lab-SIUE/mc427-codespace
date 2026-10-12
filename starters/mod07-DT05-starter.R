# Module 7 Data Task: Build an Internal Benchmark
# MC 427 Social Media Analytics
#
# How to use this file: open it in VS Code with your MC427 folder open and the R terminal
# started, then run one line at a time with Ctrl+Enter (Command+Return on a Mac).
# It reuses the Module 6 lines with different months. No new R.
# You need nms-steam-monthly-players-2016-2026.csv in the same folder.
# (In a codespace: upload the CSV to the top of the file list, not into the starters folder.)

# Load the course packages. Prints nine package names and two Conflicts lines; that is normal.
library(tidyverse)

# Load the file. Prints "Rows: 122 Columns: 5" and the column types.
players <- read_csv("nms-steam-monthly-players-2016-2026.csv")

# Frontiers (f_): the update month and the month after. Nothing prints.
f_during <- players %>% filter(month == "September 2021") %>% pull(avg_players)
f_after <- players %>% filter(month == "October 2021") %>% pull(avg_players)

# Beyond (b_): the update month and the month after. Nothing prints.
b_during <- players %>% filter(month == "August 2019") %>% pull(avg_players)
b_after <- players %>% filter(month == "September 2019") %>% pull(avg_players)

# The kept rate for Frontiers. Expected: [1] 48.1
round(100 * f_after / f_during, 1)

# The kept rate for Beyond. Expected: [1] 43.8
round(100 * b_after / b_during, 1)

# YOUR TURN: write the benchmark as one SWOT evidence sentence in your draft, naming the file.
# Add any extra comparison you want to try below this comment.


# Break it on purpose: one name is misspelled. Expected: an error ending object 'b_durin' not found
round(100 * b_after / b_durin, 1)
