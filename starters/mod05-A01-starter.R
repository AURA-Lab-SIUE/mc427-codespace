# Mini-Analysis Exercise
# MC 427 Social Media Analytics, Module 5
#
# How to use this file: it is the scaffold for your Mini-Analysis. Open it in VS Code with your
# MC427 folder open and the R terminal started, then run one line at a time with Ctrl+Enter
# (Command+Return on a Mac). Every place marked YOUR TURN is where your own work goes: code goes
# on the lines below the marker, and sentences go in the comments below the marker, with a #
# at the start of each line. When you are done, copy the text, your code and R's output into
# your submission document, section by section, in the order below: in the R terminal, drag
# across the lines to select them, then press Ctrl+C (Command+C on a Mac).

# ---- Setup -----------------------------------------------------------------------------------

# Load the course packages and the practice file. Run these lines first, every session.
library(tidyverse)
df <- read_csv("mod05-E01-practice-tweets.csv")

# Check the load. Expected: [1] 750
nrow(df)

# Expected: a 2-row tibble, no 577 and yes 173
df %>% count(share_button)

# ---- Analysis 1: T-test ----------------------------------------------------------------------
# Research question: do posts sent with a console's share button (PlayStation or Xbox) receive
# more likes than posts written in other apps?

# Test selection. YOUR TURN: one sentence naming the test and why it fits this question. Write it
# before you prompt Copilot.
#

# Copilot's code and output. YOUR TURN: paste Copilot's code below, read it, then run it line by
# line. Ask for tidyverse code (dplyr, the %>% pipe, broom::tidy) in your prompt.
# Expected: a one-row tibble whose first columns are estimate, estimate1 (the mean of the no
# group), estimate2 (yes), statistic (the t value), p.value and parameter (Welch's df, not n),
# then a Cohen's d line from effectsize. Run the test twice, on like_count and on a log1p(like_count)
# column (see the instructions), and keep both outputs.


# Plain-language interpretation. YOUR TURN: 2 to 3 sentences for the Community Manager at
# Hello Games. No statistical notation.
#

# ---- Analysis 2: Chi-square ------------------------------------------------------------------
# Research question: did the mix of apps people posted from differ across the three updates?

# Test selection. YOUR TURN: one sentence.
#

# The required check (your own code, not Copilot's). These lines are given in the instructions.
# Run them and keep the two tables. Expected: a 3 x 4 tibble of observed counts, then a 3 x 3
# table of expected counts (192.33, 49.33 and 8.33 in every row).
df %>% count(update, posted_from) %>% pivot_wider(names_from = posted_from, values_from = n)
xtabs(~ update + posted_from, data = df) %>% chisq.test() %>% pluck("expected") %>% round(2)

# Copilot's code and output. YOUR TURN: paste Copilot's chi-square code below, read it, then run
# it. Expected output shape: the chi-square test (X-squared, df, p-value) or its tidied one-row
# tibble, and a Cramer's V line from effectsize. Any warning R prints belongs in your log.


# Plain-language interpretation. YOUR TURN: 2 to 3 sentences. No statistical notation.
#

# ---- Analysis 3: Regression ------------------------------------------------------------------
# Research question: does post length (in words) predict engagement (likes)?

# Test selection. YOUR TURN: one sentence.
#

# Copilot's code and output. YOUR TURN: paste Copilot's regression code below, read it, then run
# it. Expected output shape: a tidied coefficient table (one row per term, with estimate,
# p.value, conf.low and conf.high) and a glance() row with r.squared and nobs.


# Plain-language interpretation. YOUR TURN: 2 to 3 sentences. No statistical notation.
#

# ---- Verification log ------------------------------------------------------------------------
# One entry per analysis. Each entry has four elements: (1) what Copilot produced, (2) what you
# checked and how, (3) what the check showed, with the evidence, (4) your decision and its
# effect on the output.

# Analysis 1. YOUR TURN.
#

# Analysis 2. YOUR TURN.
#

# Analysis 3. YOUR TURN.
#

# ---- AI Use Log ------------------------------------------------------------------------------
# YOUR TURN: confirm that your Week 5 entry is in your AI Use Log, and name the prompt strategy
# and at least one oversight decision it documents.
#
