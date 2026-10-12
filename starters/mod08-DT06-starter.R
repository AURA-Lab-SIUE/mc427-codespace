# Module 8 Data Task: Re-run Before You Cite
# MC 427 Social Media Analytics
#
# How to use this file: open it in VS Code with your MC427 folder open and the R terminal
# started, then run one line at a time with Ctrl+Enter (Command+Return on a Mac).
# It re-runs the Module 6 kept rate as the worked case, then leaves room for the lines behind
# each number on your own slides. nms-steam-monthly-players-2016-2026.csv is already at the top level of your course folder
# (it comes with the course template; if it is missing, download it from the Module 3 Client Scenario item).

# Load the course packages. Every script starts here.
library(tidyverse)

# The Module 6 number: the Frontiers kept rate. Re-run it from the file. Expected: [1] 48.1
players <- read_csv("nms-steam-monthly-players-2016-2026.csv")
during <- players %>% filter(month == "September 2021") %>% pull(avg_players)
after <- players %>% filter(month == "October 2021") %>% pull(avg_players)
round(100 * after / during, 1)

# YOUR TURN: for each Module 5 or Module 6 number on a slide, copy the lines that produced it
# below (from mod06-DT04-starter.R, mod07-DT05-starter.R, or your Mini-Analysis or memo file),
# run them from the top, and compare what prints with the slide.
# Same value: cite it and name the file on the slide. Different value: find out why before you
# put either number on the slide.


# Break it on purpose: the file ending is misspelled (.cvs). Expected: an error that begins
# "! 'nms-steam-monthly-players-2016-2026.cvs' does not exist in current working directory"
read_csv("nms-steam-monthly-players-2016-2026.cvs")
