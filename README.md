# MC 427 Codespace

This page is for MC 427 Social Media Analytics. It starts a **GitHub Codespace**: VS Code running in your web browser, on GitHub's computers, with R, the course's two R packages, **tidyverse** and **effectsize**, and the AURA Lab R Companion already installed. You install nothing on your own computer, so it works on a Chromebook, a school-managed laptop, or any computer with a current web browser.

You do not need to know R, VS Code, or GitHub to use it. Each step below says what to click and what you should see when it worked.

## What you need first

A free GitHub account, signed in. The course guide **GitHub Account and Copilot Student** walks you through making one.

On the course's template page, if you do not see a green **Use this template** button near the top right, you are not signed in yet: select **Sign in** at the top of the page.

## What it costs

Nothing. GitHub gives every personal account a free monthly allowance of codespace time, about 60 hours a month of an open codespace, and this course uses a small part of it. Your codespace stops on its own after 30 minutes without use, which saves your allowance. If you ever use it all up, GitHub pauses your codespace until the next month. GitHub never charges you unless you add a payment method, so do not add one.

## Your own copy

If the name at the top of this page is **AURA-Lab-SIUE/mc427-codespace**, you are looking at the course's template, and your first step is to make your own copy of it: the course guide **GitHub Account and Copilot Student**, Part 6, walks through it (green **Use this template** button at the top right, **Create a new repository**, name it **MC427**, choose **Private**, **Create repository**). If the name at the top is your username followed by **MC427**, this is your copy and that step is done.

## Open your copy (do this once)

Part 7 of the same guide covers both routes with every click. In short, on your copy's page:

- **A codespace (Chromebook, or any computer that cannot install software):** select the green **Code** button, then the **Codespaces** tab, then **Create codespace on main**. A new browser tab opens, VS Code says **Opening Remote...** for about two minutes, and then a dialog asks whether you trust the authors of the files in this folder: select **Trust Folder & Continue**. If you see a blue **Restricted Mode** bar instead, select **Manage** in it, then **Trust**. It worked if the file list on the left is headed **MC427 [Codespaces]**.
- **VS Code on your own computer (Windows or Mac):** in VS Code, select **Clone Git Repository...** on the Welcome page, then **Clone from GitHub**, sign in when asked, pick your **MC427**, choose **Documents** as the place for it, and select **Open** when VS Code offers. It worked if the file list on the left is headed **MC427**.

## Check that R works

1. Press **Ctrl+Shift+P**, type `R: Create R Terminal`, and press **Enter**. A panel opens at the bottom of the window and ends with a `>`. That panel is R.
2. A message with a red symbol appears in the bottom-right corner and asks whether to install the R package **sess**. It is not an error: select **Yes**. A second panel runs for a few seconds and ends with `* DONE (sess)`. The message comes only this first time. A yellow message about **R Debugger** may also appear; you can close it.
3. Go back to R: in the list at the right side of the Terminal panel, select **R Interactive**. The panel ending with a `>` is back.
4. Click next to the `>`, type this line exactly, and press **Enter**:

   ```
   library(tidyverse)
   ```

**It worked if:** a list of package names with check marks appears, then two lines that start with a red symbol and say `masks`, then a line about the conflicted package; all of that is normal, and the `>` comes back. If you see a line starting with `Error`, take a screenshot and email your instructor.

Or run **Check my setup** (AURA Lab R Companion) from the Command Palette (**Ctrl+Shift+P**): it finds R, checks both course packages, and ends with `SETUP OK: R and the course packages are working.`

Then go back to the course guide **Setup on a Chromebook** and continue with step **B2** (if you are in a codespace) or **Check Your Setup** (on your own computer).

## The course's R files are already here

Two kinds of course file live in this page's file list, so you never have to attach or upload them:

- `mc427-setup-check.R`, the setup test. In the R terminal, type `source("mc427-setup-check.R")` and press **Enter**; the course guide **Check Your Setup** says what the result means.
- `nms-steam-monthly-players-2016-2026.csv` and `nms-x-monthly-2016-2021.csv`, the two monthly-count data files that the Module 2, 3, 6, 7, and 8 Data Tasks load. The first is the public monthly average and peak Steam player counts for No Man's Sky, copied from SteamCharts; the second is monthly counts and percentages from the course's archive of public #NoMansSky posts on X, with no post text and no account names. The other data files each module hands you still come from Blackboard.
- `starters/`, one starter script per Data Task and analysis (`mod02-week2-starter.R`, `mod03-DT02-starter.R`, and so on). When a module tells you to open its starter, select it under `starters` in the file list. Every line is already written, with a comment above it.
- `.github/copilot-instructions.md`, Copilot's instructions for this course; leave it in place.

The two monthly data files are already here. Any other data file a module hands you comes from Blackboard: download it to your computer, then upload it into the codespace as **Setup on a Chromebook**, step B4, shows.

**If a file is ever missing from your folder,** you can take it from this page: open the file and select the download icon (**Download raw file**) at the top right of its contents. Your browser saves it in your **Downloads** folder without asking where; open File Explorer (Finder on a Mac), go to **Downloads**, and drag the file into your `MC427` folder (a starter goes into its `starters` folder).

**Saving your work to GitHub.** When you have changed or added files, the **Source Control** icon in VS Code's left bar shows a number. Select it, type a few words in the **Message** box, select **Commit** (one saved snapshot of your files), then **Sync Changes**. Your copy on GitHub then holds your work.

## Keep your codespace until you need it

**GitHub deletes a codespace that has not been opened for 30 days, along with everything in it.** To stop that:

1. Go to [https://github.com/codespaces](https://github.com/codespaces).
2. Next to your codespace, select **...**, then **Auto-delete codespace**, so that the check mark next to it goes away. A bookmark icon appears next to your codespace's name.

To open your codespace again later, go to that same page and select its name. Do not create another one from the **Code** button: that makes a second codespace, without your files in it.

A codespace is a workspace, not storage. Keep copies of your work on your own computer: in the file list, right-click a file and select **Download...**.

## If something goes wrong

- **GitHub says you have used your monthly allowance.** Go to [https://github.com/codespaces](https://github.com/codespaces), delete any codespace you are not using from the **...** menu next to it, and email your instructor. Do not add a payment method.
- **Your codespace is gone.** It was deleted after 30 days without use. Start a new one with the steps above. R, tidyverse, effectsize, and the AURA Lab R Companion come with it again.
- **Anything else.** Stop after 15 minutes on one step. Take a screenshot, write down the step, and email your instructor.

## About this template (for instructors)

This template is maintained by the AURA Lab at Southern Illinois University Edwardsville for MC 427 Social Media Analytics. It is a sibling of the lab's [From Vibes to Variables (V2V)](https://aura-lab.siue.edu/v2v/) methods package (the textbook, the [course hub](https://aura-lab.siue.edu/v2v-hub/), the [v2v R package](https://github.com/AURA-Lab-SIUE/v2v-r), the [course workspace](https://github.com/AURA-Lab-SIUE/v2v-workspace), and the [R Companion](https://github.com/AURA-Lab-SIUE/r-companion) VS Code extension), which serves MC 451 and MC 501. MC 427 uses the same VS Code and R toolchain through this Codespace, without the v2v package.

To adapt it for another course: the R version and preinstalled packages are in `.devcontainer/Dockerfile`, the pinned VS Code extensions and settings are in `.devcontainer/devcontainer.json`, the graded setup check is `mc427-setup-check.R` (its `SETUP OK` line is matched character for character by the course guide, so change both together), the course data files sit at the repository root, and the per-module starter scripts are in `starters/`.
