pollutantmean <- function(directory, pollutant, id = 1:332) {

  vals <- vector()

  for (i in id) {
    # Grab data from relevant csv
    file_name <- sprintf('%03d.csv', i)
    file_path <- paste('./data', directory, file_name, sep='/')
    data <- read.csv(file_path)

    # Grab correct column
    d <- data[ ,pollutant]

    # Data cleaning
    d <- d[!is.na(d)]

    # Append to vector
    vals <- c(vals, d)
  }
  mean(vals)
}
