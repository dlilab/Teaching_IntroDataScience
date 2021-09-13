---
title: macOS set up
author: Daijiang Li
date: '2021-09-13'
slug: macos-set-up
categories: []
tags: []
---

This post documents the very basic set up I have made with a brand new account in macOS. By no means this list is comprehensive and it also reflects my personal preferences.

## System set up

- `System Preferences` -> `Trackpad` -> `Tap to click`: I like to be able to click with a tap.
- `System Preferences` -> `Accessibility` -> `Pointer Control` -> `Trachpad options` -> check `Enable dragging` then select `three finger drag`: I like to be able to move an application or select text with three fingers.
- `System Preferences` -> `Dock & Menu Bar` -> check `Automatically hide and show the Dock`: The space is already limited on a laptop so I want to hide the dock (on the left side for me).
  + I also removed lots of build-in App from the dock: click with two fingers, then `Options`, then `Remove from Dcok`.

## Install Apps

1. [Homebrew](https://brew.sh) is the first program to install! Now most other Apps will be installed with `brew`. With the code below, it is easy to switch computers later (if without `TimeMachine`).
2. `brew install --cask alfred` to install [Alfred](https://www.alfredapp.com): to quickly lanch Apps (and more). 
    - Use `Alt + Space` then type the App you want to open, then press `enter` or move down to the one you want to open and then press `enter`.
3. `brew install --cask iterm2` to install [iTerm2](https://iterm2.com): a better option than Apple's Terminal app.
    - `Cmd + ,` to open preferences, `Profiles` -> `Colors` --> set `Background` color to `300a24` (I like the Ubuntu terminal background color).
4. `brew tap homebrew/cask-fonts` then `brew install --cask font-iosevka` to install the `Iosevka` font, which I really like to be my coding font.
    - back to iTerm2 and set Iosevka as the font `Profiles` -> `text` 
5. `brew install --cask r` to install [R](https://www.r-project.org/).
6. `brew install --cask rstudio` to install [RStudio](https://www.rstudio.com/)
    - I also set the font to be Iosevka: `Cmd + ,` -> `Apperance` -> `Editor font` and select `Iosevka-Term`.
    - Open `Alfred`, then `Cmd + ,`, in the `Features` panel and the `Default Results`, select `Advanced`, then drag and drop an RStudio project file to here. This will allow Alfred to search all RStudio projects later, which is very handy.
    - Install R package `usethis` with `install.packages("usethis")`; after then, in RStudio, run `usethis::edit_r_environ()`; in the opened file, add `R_LIBS_USER="~/R"`. This will make sure all R packages later will be installed in one folder no matter which version of R you use. The default behavior of R will install packages in different folders (with version number) when you use different versions of R (i.e., update R to a new version and then packages will be installed in another folder named as something like this `/Library/Framework/R.framework/Version/4.1/Resources/library [Default]`)
    - In Terminal, run `mkdir ~/R` to create the folder to host R packages.






