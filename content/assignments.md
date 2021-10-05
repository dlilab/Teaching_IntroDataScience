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

This homework will be due at **October 7th, 9am**. Please submit your homework as an Rmd file to GitHub. It is probably a good idea to create a `hw_02` subfolder within your `homework` folder and put the Rmd file there. Please also generate a PDF file there. You don't need to email me again about your homework. I have your GitHub repo link and will check out your homework there. This should apply to all homework assignments.


## Homework 3

1. (2 points) Suppose we have a dataset A (see code below) where each column represents multiple measures of nitrogen concentration in a particular lake. We want to get the average value for each lake. Do this in two ways: a `for` loop and a vectorized function `colMeans()`. 

    ```r
    set.seed(12) # to be reproducible
    A = matrix(data = 1:500, nrow = 50, ncol = 10)
    colnames(A) = paste("lake", 1:10, sep = "_")
    ```
2. (2 points) From the for loop lecture, we see the following example of using `apply()`:

   ```r
   x = array(1:27, dim = c(3, 3, 3))
   apply(X = x, MARGIN = c(1, 2), 
         FUN = paste, collapse = ", ")
   ```
   
   Now, use `for` loops to get the same task done (hint: nested loops). The results should be the same.

3. (2 points) The Fibonacci Sequence is the series of numbers that the next number is the sum of the previous two numbers: 0, 1, 1, 2, 3, 5, 8 ... Use a `for` loop to get the first 30 numbers of the Fibonacci Sequence. This question should demonstrate the need for loops because there is no easy way to use vectorized functions in this case.
4. (2 points) In the example data below, extract those ranking numbers **with regular expression**. The results should have the number(s) and `.` if it follows after the numbers immediately (i.e., `1.`, `12.`, `105.`, `105.3`, etc.). Remove empty strings from the final results. You should get 107 strings for your results.

   ```r
   top105 = readLines("http://www.textfiles.com/music/ktop100.txt")
   top105 = top105[-c(64, 65)] # missing No. 54 and 55
   ```
5. (2 points) For the vector with length of 107 you got from question 4, remove all **trailing `.`**. (hint: `?sub`). Then convert it to a numeric vector and find out which numbers have duplications (i.e., a tie in ranking). Don't count by eyes, use R to find it out (hint: `table()`, `sort()`; or `duplicated()`, `which()`, `[` subsetting; there are more than one way to do so).

This homework will be due at **October 14th, 9am**.
