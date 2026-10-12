# MC 427, Module 4, Data Task: Count Agreement
# Your week 4 script. Every line is already written. Put your cursor on a line
# and press Ctrl+Enter (Command+Return on a Mac) to run it, one line at a time,
# from the top. A line that starts with # is a comment: R skips it.
# Before you start: mod04-E01-coding-worksheet.csv (with your codes AND the AI's
# codes filled in) and mod04-E01-next-50-reviews.csv are both in your MC427 folder.
# (In a codespace: upload them to the top of the file list, not into the starters folder.)
# Your numbers are your own, because they come from your own coding. The numbers in
# the "Expect" comments come from a worksheet filled with codes drawn at random.

# ---- 1. Load the tidyverse ----
library(tidyverse)

# ---- 2. Load your coded worksheet and name it "codes" ----
# Expect: a report of 50 rows and 8 columns
codes <- read_csv("mod04-E01-coding-worksheet.csv")

# ---- 3. Look at every column: name, type, first values ----
# Expect: your four code columns say <chr>. If one says <lgl>, it is empty: fill it first.
glimpse(codes)

# ---- 4. The share of reviews where your sentiment code and the AI's match ----
# sentiment == ai_sentiment is TRUE or FALSE for each review; mean() of that is the share TRUE.
# Expect: a 1 x 1 tibble with one number between 0 and 1 (the random example gives 0.94)
codes %>% summarize(share_agree = mean(sentiment == ai_sentiment))

# ---- 5. Count every pair of codes: yours, the AI's, and how many reviews got that pair ----
# Expect: one row per pair, with an n column that adds up to 50
codes %>% count(sentiment, ai_sentiment)

# ---- 6. List the reviews where you and the AI disagreed on sentiment ----
# Expect: one row per disagreement, with the review's id and both codes
codes %>% filter(sentiment != ai_sentiment) %>% select(review_id, sentiment, ai_sentiment)

# ---- 7. Ask Copilot Chat ----
# YOUR TURN: ask Copilot Chat: "Write two R lines using the tidyverse that do the same
# agreement check for the focus and ai_focus columns of my data frame codes: the share
# that match, and a count of every pair." Paste its lines below this comment and run them.
# Check: they should look like steps 4 and 5 with focus in place of sentiment,
# the share must be between 0 and 1, and the n column must add up to 50.


# ---- 8. Text flags take quotation marks ----
# edited holds the text "yes" or "no", so you compare it with "yes" in quotation marks.
# Expect: 0.22 (everyone gets this one; it comes from the review file, not your coding)
reviews <- read_csv("mod04-E01-next-50-reviews.csv")
reviews %>% summarize(share_edited = mean(edited == "yes"))

# Expect: no 39, yes 11
reviews %>% count(edited)

# ---- 9. Break it on purpose ----
# YOUR TURN: remove the # from the line below and run it. The column name is misspelled on purpose.
# Expect: an error from count() that says the column ai_sentment is not found
# codes %>% count(sentiment, ai_sentment)

# ---- 10. Log it ----
# YOUR TURN: in your AI Use Log, Week 4, paste the share that step 4 printed and the count
# table from step 5, whose n column must add up to 50. Say whether Copilot's focus lines
# worked on the first try, and record what your AI tool said about the error.
