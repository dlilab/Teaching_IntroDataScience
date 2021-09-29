---
date: "2021-08-23"
title: Homework assignments
---

## Homework 1

At this moment, you should have installed all required tools on your computer. You also should have some general ideas about what they can do. In this assignment, you will:

1. Register a GitHub account and create a new repository named as `BIOL7800`.
2. Within the repository, add an RStudio project file; you can name it as `biol7800.Rproj`.
3. Create a folder named as `homework`; and then a subfolder named as `hw_01`.
4. Within `hw_01`, create a RMarkdown file named as `hw_o1.Rmd`. You can use the default template for it.
5. Replace the content with a short self introduction of yourself. Try to use some markdown syntax (e.g., section title, bold, italic fonts, etc.).
6. Also insert [bash chunks](https://bookdown.org/yihui/rmarkdown/language-engines.html#shell-scripts) to print out the versions of `git` and `R` installed on your computer.

After done, compile the `Rmd` file to `html` and `pdf`. Push all files (`Rmd`, `html`, and `pdf`) to your `BIOL7800` repository on GitHub. You need to send me an email to let me know where is your `BIOL7800` repository (i.e., `https://github.com/USER/BIOL7800`). This repository is where you are going to submit all homework assignments and final reports. I will grade it by cloning it to my computer and recompile it. The last commit time will be used to check whether it is late or not. Remember, no late homework will be accepted. If the last commit time is after the deadline, I will use whatever commit that was before the deadline as your submission.

This homework will be due at **September 23th, 9am**.

## Homework 2

1. (2 points) Fix each of the following common data frame subsetting errors:
   ```r
   mtcars[mtcars$cyl < 6]
   mtcars[-1:3,]
   mtcars[mtcars$cyl = 8, ]
   mtcars[mtcars$cyl == 4 | 6, ]
   ```
2. (1 point) Why does the following code generated five missing values?
   ```r
   x = 1:5
   x[NA]
   ```
3. (2 points) Why does `mtcars[1:15]` return an error? How does it differ from `mtcars[1:15, ]`?
4. (2 points) Explain how does the following code work.
   ```r
   x = matrix(c(1:3, NA, 5:7, NA, NA), nrow = 3)
   x[is.na(x)] = 0
   ```
5. (3 points) Load the Car Road Tests dataset (in R, run `data("mtcars")`, `?mtcars`), then add a new column named as `mpg_2` for the `mtcars` data frame. You can use `if ... else ...` or `ifelse` or any other functions that can get the job done. This new column will categorize `mpg` into four categories using the thresholds below: 

    | `mpg_2` category  | Thresholds     |
    |-------------------|----------------|
    | Low               | mpg < 16       |
    | Low_intermediate  | 16 <= mpg < 21 |
    | Intermediate_high | 21 <= mpg < 26 |
    | High              | 26 <= mpg      |

This homework will be due at **October 7th, 9am**.


