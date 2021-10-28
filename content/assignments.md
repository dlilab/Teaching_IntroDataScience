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
    A = matrix(data = runif(n = 1:500), nrow = 50, ncol = 10)
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

This homework will be due at **October 18th, 9am**.

## Homework 4

1. (3 points) Use the `rvest` R package to scrape the schedule and materials **table** into R from the course webpage (https://introdatasci.dlilab.com/schedule_materials/). Read the [documentation of `rvest`](https://rvest.tidyverse.org/) so you get a better idea about the functions provided by `rvest` and their usages.
2. (2 points) With the extracted data frame, create two new columns based on the `Date` column: `month` and `day`. `month` would be the month abbrevations from the `Date` column; `day` would be the numeric numbers from the `Date` column. Although you can use whatever approach to get this done (do not enter them by hand...), I suggest you try to practice regular expression here (`sub()` or `stringr::str_extract()`).
3. (2 points) With the data frame generated from Q2, use `group_by()` and `summarise()` to find out the number of lectures for each `month`, order the results by the number of lectures (high to low).
3. (3 points) For the `Topic` column, split all values into words (hint: `stringr::str_split()`). Observe the values in the `Topic` column and use regular expression to specify the `pattern` in the `stringr::str_split()` or `strsplit()` function. Once this is done, you should get a list of list, you can use `unlist()` to convert it into a vector and name it as `words`. Use `table()` and `sort()` to find the top 5 most frequent words. 

I was thinking to have a homework to get all plant occurrence data within Baton Rouge from GBIF. But it will require you to register an account and have account name and password when you use the `rgbif` package. This may have the risk of get your password leaked (you can avoid this by reading the documentation of `rgbif`); so I decided not to do so. If you are interested, you may want to run some example codes from the [`rgbif` package's documentation](https://cran.r-project.org/web/packages/rgbif/rgbif.pdf).

This homework will be due at **October 28th, 9am**.

## Homework 5

In the `neonDivData` data package, there is a data frame named as `data_plant`. This data frame records plant coverage (percentage at 1 m^2^ scale indicated by the `sample_area_m2` column) and plant presence information in larger plots (10 and 100 m^2^ indicated by the `sample_area_m2` column). Use this data frame and functions we learned during lectures to do the steps below.

1. Create a new column named as `genus` for `data_plant` from the `taxon_name` column. The genus name is the first word of the scientific names. For example, if a record has `taxon_name` of `"Bunchosia glandulosa (Cav.) DC."`, then the genus is `"Bunchosia"`. You probably want to use regular expression to do so. Take a look at all the names (`sort(unique(data_plant$taxon_name))`) to look at possible genus names and think about how to specify the regular expression pattern. Randomly select 100 values from the `genus` column and print it out.
2. Looking at the `taxon_name` values, it is clear that some scientific names probably are the same species (as different subspecies). For example, we may want to treat "Calamagrostis canadensis (Michx.) P. Beauv." and "Calamagrostis canadensis (Michx.) P. Beauv. var. langsdorffii (Link) Inman" as the same species. Create a new column `taxon_name2` for `data_plant` based on `taxon_name`. `taxon_name2` should just contain the first two words of `taxon_name`. For example, "Calamagrostis canadensis (Michx.) P. Beauv." and "Calamagrostis canadensis (Michx.) P. Beauv. var. langsdorffii (Link) Inman" should both be "Calamagrostis canadensis". Randomly select 100 values from the `taxon_name2` column and print it out.
3. Calculate the number of species (based on `taxon_name2`) of each site observed based on different sizes of plot:

      - based on 1 m^2^ plots; this would be all observations with `sample_area_m2 == "1"`. This would result in a data frame named as `n_1` with two columns: `siteID` and `richness_1m2`.
      - based on 10 m^2^ plots; this would be all observations with `sample_area_m2 %in% c("1", "10")`. This would result in a data frame named as `n_10` with two columns: `siteID` and `richness_10m2`.
      - based on 100 m^2^ plots; this would be all observations with `sample_area_m2 %in% c("1", "10", "100")`. This would result in a data frame named as `n_100` with two columns: `siteID` and `richness_100m2`.
      
   then, use `dplyr::left_join()` to join `n_1`, `n_10`, and `n_100` as one data frame `n_all`, which should have 47 rows and four columns: `siteID`, `richness_1m2`, `richness_10m2`, and `richness_100m2`. Note: `dplyr::left_join()` can only join two data frames at each time, so you may use pipe (e.g., `xyz = left_join(x, y) %>% left_join(z)`).
4. Transform `n_all` to a long format data frame named as `n_all_long` with three columns: `siteID`, `spatial_scale`, and `richness`. Hint: `tidyr::pivot_longer()`.
5. Use `ggplot2` and `n_all_long` to generate the plot below. Each line links the three values of each site (hint: `aes(group = siteID)`).

   ![hw5](../images/hw5.png)

This homework will be due at **November 4th, 9am**.
