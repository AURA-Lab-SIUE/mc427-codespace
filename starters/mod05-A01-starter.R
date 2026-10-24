# Mini-Analysis Exercise
# MC 427 Social Media Analytics, Module 5
#
# How to use this file: it holds every line of code the Mini-Analysis needs. Open it in VS Code
# with your MC427 folder open and the R terminal started, then run one line at a time with
# Ctrl+Enter (Command+Return on a Mac). Every place marked YOUR TURN is where your own sentences
# go: write them in the comments below the marker, with a # at the start of each line.
# (In a codespace: upload the CSV to the top of the file list, not into the starters folder.)
# When you are done, copy the text, the code and R's output into your submission document, in
# the order below: in the R terminal, drag across the lines to select them, then press Ctrl+C
# (Command+C on a Mac).

# ---- Setup -----------------------------------------------------------------------------------

# Load the course packages and the practice file. Run these lines first, every session.
library(tidyverse)
df <- read_csv("mod05-E01-practice-tweets.csv")

# Check the load. Expected: [1] 750
nrow(df)

# Expected: a 2-row tibble, no 577 and yes 173
df %>% count(share_button)

# ---- The question ----------------------------------------------------------------------------
# Do posts sent with a console's share button (PlayStation or Xbox) receive more likes than
# posts written in other apps?

# Step 1, test selection. YOUR TURN: one sentence naming the test and why it fits this question.
# Write it before you run the test.
#

# ---- Step 2: look at the likes before you test -----------------------------------------------
# Expected: a 2-row tibble. no: 577 posts, median 1, mean 7.81, max 330.
# yes: 173 posts, median 1, mean 5.55, max 89.
df %>%
  group_by(share_button) %>%
  summarize(posts = n(), median_likes = median(like_count),
            mean_likes = round(mean(like_count), 2), max_likes = max(like_count))

# A few posts have many likes, so add a second version of the likes column that shrinks big
# numbers: log1p() is the log of one plus the count, which works when the count is zero.
df <- df %>% mutate(log_likes = log1p(like_count))

# ---- Step 3: run the t-test, both ways -------------------------------------------------------
# Version 1, on like_count. Expected: estimate1 7.81 (no), estimate2 5.55 (yes), statistic 1.56,
# p.value 0.118, parameter 530. Then Cohen's d 0.10, 95% CI [-0.07, 0.27].
t.test(like_count ~ share_button, data = df) %>% broom::tidy()
effectsize::cohens_d(like_count ~ share_button, data = df)

# Version 2, on log_likes. Expected: estimate1 1.15, estimate2 1.02, statistic 1.30,
# p.value 0.195, parameter 297. Then Cohen's d 0.11, 95% CI [-0.06, 0.28].
t.test(log_likes ~ share_button, data = df) %>% broom::tidy()
effectsize::cohens_d(log_likes ~ share_button, data = df)

# ---- Step 4: verification log ----------------------------------------------------------------
# One entry with four elements: (1) what the code produced, (2) what you checked and how,
# (3) what the check showed, with the numbers, (4) your decision (accept, modify, or reject)
# and why.
# YOUR TURN.
#

# ---- Step 5: plain-language interpretation ---------------------------------------------------
# YOUR TURN: 2 to 3 sentences for the Community Manager at Hello Games. No statistical notation.
#

# ---- AI Use Log ------------------------------------------------------------------------------
# YOUR TURN: confirm that your Week 5 entry is in your AI Use Log, and name the prompt strategy
# and at least one oversight decision it documents (from your Copilot work on the memo).
#
