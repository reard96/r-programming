rankhospital <- function(state, outcome, num = 'best') {
  ## Read outcome data
  data <- read.csv('../data/ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = 'character')

  ## Only keep relevant columns
  data <- data[c(2, 7, 11, 17, 23)]
  names(data)[1] <- 'hospital'
  names(data)[2] <- 'state'
  names(data)[3] <- 'heart attack'
  names(data)[4] <- 'heart failure'
  names(data)[5] <- 'pneumonia'

  ## Check that state and outcome are valid
  if (!(state %in% data$state)) stop('invalid state')

  outcomes <- c('heart attack', 'heart failure', 'pneumonia')
  if (!(outcome %in% outcomes)) stop('invalid outcome')

  ## Validate num value
  if(num != 'best' && num != 'worst' && num%%1 != 0) stop('invalid num')

  ## Grab relevant data
  data <- data[data$state == state & data[outcome] != 'Not Available', ]

  ## Order by state and then outcome column
  data[outcome] <- as.data.frame(sapply(data[outcome], as.numeric))
  data <- data[order(data$hospital, decreasing = FALSE), ]
  data <- data[order(data[outcome], decreasing = FALSE), ]

  vals <- data[, outcome]

  if (num == 'best') {
    row <- which.min(vals)
  } else if (num == 'worst') {
    row <- which.max(vals)
  } else {
    row <- num
  }

  data[row, ]$hospital
}
