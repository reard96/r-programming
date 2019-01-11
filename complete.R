complete <- function(directory, id = 1:332) {

  vals <- vector()

  for (i in id) {
    # Grab data from relevant csv
    file_name <- sprintf('%03d.csv', i)
    file_path <- paste('./data', directory, file_name, sep='/')
    data <- read.csv(file_path)

    # Data cleaning
    data <- data[!is.na(data)]

    # Append to vector
    vals <- c(vals, data)
  }
  length(vals)
}
