complete <- function(directory, id = 1:332) {

  df <- data.frame(matrix(ncol = 2, nrow = 0))
  x <- c('id', 'nobs')
  colnames(df) <- x

  for (i in id) {
    # Grab data from relevant csv
    file_name <- sprintf('%03d.csv', i)
    file_path <- paste('./data', directory, file_name, sep='/')
    data <- read.csv(file_path)

    # Data cleaning
    data <- data[complete.cases(data), ]
    num_complete <- nrow(data)

    df[nrow(df) + 1, ] <- list(i, num_complete)
  }
  df
}
