# MC 427, Module 2, Data Task: Pull a Baseline
# Your week 2 script. Every line is already written. Put your cursor on a line
# and press Ctrl+Enter (Command+Return on a Mac) to run it, one line at a time,
# from the top. A line that starts with # is a comment: R skips it.
# Before you start: nms-steam-monthly-players-2016-2026.csv is in your MC427
# folder, and VS Code has that folder open.
# (In a codespace: upload it to the top of the file list, not into the starters folder.)

# ---- 1. Load the tidyverse (once, at the top of every script) ----
# Prints a list of package names with check marks, then two "masks" lines. Both are normal.
library(tidyverse)

# ---- 2. Load the data file and name it "players" ----
# Prints a short report: 122 rows, 5 columns, and each column's type (chr = text, dbl = number).
players <- read_csv("nms-steam-monthly-players-2016-2026.csv")

# ---- 3. Count the rows: one per month ----
# Expect: [1] 122
nrow(players)

# ---- 4. Look at every column: its name, its type, and its first values ----
# Expect: Rows: 122, Columns: 5, then one line per column starting with $
glimpse(players)

# ---- 5. The first six rows ----
# %>% is the pipe: "take players, then show the first six rows."
# Expect: A tibble: 6 x 5, with September 2026 in row 1
players %>% slice_head(n = 6)

# ---- 6. One column on its own ----
# "Take players, then the first six rows, then pull out the avg_players column."
# Expect: [1] 23597.63  8244.41  9225.14 12899.04  9621.67 12320.58
players %>% slice_head(n = 6) %>% pull(avg_players)

# ---- 7. Break it on purpose ----
# YOUR TURN: remove the # from the line below and run it. The name is misspelled on purpose.
# Expect: Error: object 'player' not found
# nrow(player)

# ---- 8. Log it ----
# YOUR TURN: in your AI Use Log, Week 2, paste the "[1] 122" line that nrow(players)
# printed, and record what your AI tool said about the error and whether it was right.
