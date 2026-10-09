# MC 427 Codespace

This page is for MC 427 Social Media Analytics. It starts a **GitHub Codespace**: VS Code running in your web browser, on GitHub's computers, with R and the course's R package, **effectsize**, already installed. You install nothing on your own computer, so it works on a Chromebook, a school-managed laptop, or any computer with a current web browser.

You do not need to know R, VS Code, or GitHub to use it. Each step below says what to click and what you should see when it worked.

## What you need first

A free GitHub account, signed in. The course guide **GitHub Account and Copilot Student** walks you through making one.

## What it costs

Nothing. GitHub gives every personal account a free monthly allowance of codespace time, about 60 hours a month of an open codespace, and this course uses a small part of it. Your codespace stops on its own after 30 minutes without use, which saves your allowance. If you ever use it all up, GitHub pauses your codespace until the next month. GitHub never charges you unless you add a payment method, so do not add one.

## Start your codespace (do this once)

1. Near the top of this page, select the green **Use this template** button.
2. In the menu that opens, select **Open in a codespace**.
3. Wait while GitHub builds your codespace. The first start takes a few minutes. When VS Code opens, this page opens again inside it, and the bottom of the window may say **Activating Extensions...** for a minute. Wait until that message goes away.

**It worked if:** VS Code is open in your browser tab, the file list on the left shows `README.md`, and this page is open in the middle of the window.

## Check that R works

1. Press **Ctrl+Shift+P**, type `R: Create R Terminal`, and press **Enter**. A panel opens at the bottom of the window and ends with a `>`. That panel is R.
2. Click next to the `>`, type this line exactly, and press **Enter**:

   ```
   library(effectsize)
   ```

**It worked if:** the `>` comes back with no message. If you see a line starting with `Error`, take a screenshot and email your instructor.

Then go back to the course guide **Setup on a Chromebook** and continue with its next step.

## Keep your codespace until you need it

**GitHub deletes a codespace that has not been opened for 30 days, along with everything in it.** To stop that:

1. Go to [https://github.com/codespaces](https://github.com/codespaces).
2. Next to your codespace, select **...**, then **Keep codespace**.

To open your codespace again later, go to that same page and select its name. Do not use **Use this template** again: that makes a second, empty codespace, and two codespaces use your allowance twice as fast.

A codespace is a workspace, not storage. Keep copies of your work on your own computer: in the file list, right-click a file and select **Download...**.

## If something goes wrong

- **GitHub says you have used your monthly allowance.** Go to [https://github.com/codespaces](https://github.com/codespaces), delete any codespace you are not using from the **...** menu next to it, and email your instructor. Do not add a payment method.
- **Your codespace is gone.** It was deleted after 30 days without use. Start a new one with the steps above. R and effectsize come with it again.
- **Anything else.** Stop after 15 minutes on one step. Take a screenshot, write down the step, and email your instructor.
