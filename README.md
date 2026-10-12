# MC 427 Codespace

This page is for MC 427 Social Media Analytics. It starts a **GitHub Codespace**: VS Code running in your web browser, on GitHub's computers, with R and the course's two R packages, **tidyverse** and **effectsize**, already installed. You install nothing on your own computer, so it works on a Chromebook, a school-managed laptop, or any computer with a current web browser.

You do not need to know R, VS Code, or GitHub to use it. Each step below says what to click and what you should see when it worked.

## What you need first

A free GitHub account, signed in. The course guide **GitHub Account and Copilot Student** walks you through making one.

If you do not see a green **Use this template** button near the top of this page, you are not signed in yet: select **Sign in** at the top of the page.

## What it costs

Nothing. GitHub gives every personal account a free monthly allowance of codespace time, about 60 hours a month of an open codespace, and this course uses a small part of it. Your codespace stops on its own after 30 minutes without use, which saves your allowance. If you ever use it all up, GitHub pauses your codespace until the next month. GitHub never charges you unless you add a payment method, so do not add one.

## Start your codespace (do this once)

1. Near the top of this page, select the green **Use this template** button.
2. In the menu that opens, select **Open in a codespace**.
3. Wait while GitHub builds your codespace. First, a page that says **Setting up your codespace** appears, and it can show nothing else for several minutes. That is normal, so do not reload the page or select **Use this template** again: selecting it again makes a second codespace. Next, VS Code opens, and while the bottom-left corner of its window says **Opening Remote...**, it is still getting ready. If the page still says **Setting up your codespace** after 15 minutes, take a screenshot and email your instructor.
4. A message asks **"Do you trust the authors of the files in this folder?"** These are the course's own files: select **Trust Folder & Continue**.

**It worked if:** VS Code is open in your browser tab, and the file list on the left is headed `mc427-codespace` and shows `README.md`. This page also opens in the middle of the window as plain text, with symbols such as `#` and `**`; you can close it.

## Check that R works

1. Press **Ctrl+Shift+P**, type `R: Create R Terminal`, and press **Enter**. A panel opens at the bottom of the window and ends with a `>`. That panel is R.
2. A message with a red symbol appears in the bottom-right corner and asks whether to install the R package **sess**. It is not an error: select **Yes**. A second panel runs for a few seconds and ends with `* DONE (sess)`. The message comes only this first time. A yellow message about **R Debugger** may also appear; you can close it.
3. Go back to R: in the list at the right side of the Terminal panel, select **R Interactive**. The panel ending with a `>` is back.
4. Click next to the `>`, type this line exactly, and press **Enter**:

   ```
   library(tidyverse)
   ```

**It worked if:** a list of package names with check marks appears, ending in two lines that start with a red symbol and say `masks`; that is normal, and the `>` comes back. If you see a line starting with `Error`, take a screenshot and email your instructor.

Then go back to the course guide **Setup on a Chromebook** and continue with step **B3**.

## Keep your codespace until you need it

**GitHub deletes a codespace that has not been opened for 30 days, along with everything in it.** To stop that:

1. Go to [https://github.com/codespaces](https://github.com/codespaces).
2. Next to your codespace, select **...**, then **Auto-delete codespace**, so that the check mark next to it goes away. A bookmark icon appears next to your codespace's name.

To open your codespace again later, go to that same page and select its name. Do not select **Use this template** again: that makes a second codespace, without your files in it.

A codespace is a workspace, not storage. Keep copies of your work on your own computer: in the file list, right-click a file and select **Download...**.

## If something goes wrong

- **GitHub says you have used your monthly allowance.** Go to [https://github.com/codespaces](https://github.com/codespaces), delete any codespace you are not using from the **...** menu next to it, and email your instructor. Do not add a payment method.
- **Your codespace is gone.** It was deleted after 30 days without use. Start a new one with the steps above. R, tidyverse and effectsize come with it again.
- **Anything else.** Stop after 15 minutes on one step. Take a screenshot, write down the step, and email your instructor.
