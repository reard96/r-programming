## Week 1 Quiz

###### 1. R was developed by statisticians working at
- The University of Auckland

###### 2. The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.
- The freedom to prevent users from using the software for undesirable purposes.
- The freedom to restrict access to the source code for the software.

###### 3. In R the following are all atomic data types EXCEPT: (Select all that apply)
- list
- table
- data frame
- array
- matrix

###### 4. If I execute the expression `x <- 4L` in R, what is the class of the object `x` as determined by the `class()` function?
- integer

###### 5. What is the class of the object defined by the expression `x <- c(4, "a", TRUE)`?
- character

###### 6. If I have two vectors `x <- c(1,3, 5)` and `y <- c(3, 2, 10)`, what is produced by the expression `cbind(x, y)`?
- a matrix with 2 columns and 3 rows

###### 7. A key property of vectors in R is that
- elements of a vector all must be of the same class

###### 8. Suppose I have a list defined as `x <- list(2, "a", "b", TRUE)`. What does `x[[1]]` give me? Select all that apply.
- a list containing the number 2
- a numeric vector containing the element 2

###### 9. Suppose I have a vector `x <- 1:4` and `y <- 2:3`. What is produced by the expression `x + y`?
- an integer vector with the values 3, 5, 5, 7

###### 10. Suppose I have a vector `x <- c(17, 14, 4, 5, 13, 12, 10)` and I want to set all elements of this vector that are greater than 10 to be equal to 4. What R code achieves this? Select all that apply.
- `x[x > 10] <- 4`

###### Use the Week 1 Quiz Data Set to answer questions 11-20.
- *Note: It was easiest to upload this data set to [Repl.it](https://repl.it/) and run some simple code there to answer these questions.*

###### 11. In the dataset provided for this Quiz, what are the column names of the dataset?
- Ozone, Solar.R, Wind, Temp, Month, Day

###### 12. Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
- ![Image of First Two Rows](/data/first_rows.png)

###### 13. How many observations (i.e. rows) are in this data frame?
- 153

###### 14. Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
- ![Image of Last Two Rows](/data/last_rows.png)

###### 15. What is the value of Ozone in the 47th row?
- 21

###### 16. How many missing values are in the Ozone column of this data frame?
- 37

###### 17. What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
- 42.1

###### 18. Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
- 212.8

###### 19. What is the mean of "Temp" when "Month" is equal to 6?
- 79.1

###### 20. What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
- 115
