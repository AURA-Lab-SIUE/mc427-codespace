# MC 427, Module 3, Data Task: Check the Scenario's Numbers
# Your week 3 script. Every line is already written. Put your cursor on a line
# and press Ctrl+Enter (Command+Return on a Mac) to run it, one line at a time,
# from the top. A line that starts with # is a comment: R skips it.
# Before you start: nms-x-monthly-2016-2021.csv is in your MC427 folder, and
# VS Code has that folder open. Check with getwd() and list.files() in the R terminal.
# (In a codespace: upload it to the top of the file list, not into the starters folder.)

# ---- 1. Load the tidyverse ----
library(tidyverse)

# ---- 2. Load the data file and name it "posts" ----
# Expect: a report of 63 rows and 9 columns; month is chr, the rest are dbl.
posts <- read_csv("nms-x-monthly-2016-2021.csv")

# ---- 3. Count the rows: one per month ----
# Expect: [1] 63
nrow(posts)

# ---- 4. Two summaries at once: every post in the archive, and the biggest month ----
# summarize() makes a new one-row table from the columns you name.
# Expect: a 1 x 2 tibble: total 359410, biggest 89167
posts %>% summarize(total = sum(posts), biggest = max(posts))

# ---- 5. Four summaries: smallest month, middle month, average month, biggest month ----
# Expect: a 1 x 4 tibble: 1284, 3736, 5705., 89167
posts %>% summarize(smallest = min(posts), middle = median(posts), average = mean(posts), biggest = max(posts))

# ---- 6. Pick one month's post count and store it ----
# filter() keeps the rows that match; pull() takes one column out as a plain number.
# These two lines print nothing: a line that stores something is quiet.
jun <- posts %>% filter(month == "2018-06") %>% pull(posts)
jul <- posts %>% filter(month == "2018-07") %>% pull(posts)

# ---- 7. Percent change from June to July 2018, the month NEXT came out ----
# Expect: [1] 439
round(100 * (jul / jun - 1))

# ---- 8. Ask Copilot Chat ----
# YOUR TURN: select the line that starts "jun <- posts" and ask Copilot Chat:
# "Explain this R line one piece at a time for a beginner."
# YOUR TURN: ask Copilot for a line that adds up posts_mentioning_refund for the months
# 2016-08 and 2016-09. Copilot Chat may open in Agent mode, which can change your files by
# itself; ask for code only. Type: Write one tidyverse line that adds up posts_mentioning_refund
# for the months 2016-08 and 2016-09 in posts. Do not run anything; reply with only the code block.
# Paste its line below this comment and run it.
# Expect: 803. If you get anything else, the line is wrong.


# ---- 9. Break it on purpose ----
# YOUR TURN: remove the # from the line below and run it. The column name is misspelled on purpose.
# Expect: an error from filter() that says: object 'mont' not found
# posts %>% filter(mont == "2018-06")

# ---- 10. Log it ----
# YOUR TURN: in your AI Use Log, Week 3, paste the "[1] 439" line, say whether Copilot's
# refund line printed 803 on the first try, and record what your AI tool said about the error.
