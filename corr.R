corr <- function(directory, threshold = 0) {

  locations <- complete(directory, 1:332)
  locations <- subset(locations, nobs > threshold)

  corrs <- vector()

  for (i in locations$id) {
    # Grab data from relevant csv
    file_name <- sprintf('%03d.csv', i)
    file_path <- paste('./data', directory, file_name, sep='/')
    data <- read.csv(file_path)

    data <- data[complete.cases(data), ]
    corrs <- c(corrs, cor(data$nitrate, data$sulfate))

  }
  corrs
}

