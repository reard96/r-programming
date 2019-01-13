best <- function(state, outcome) {
  ## Read outcome data
  data <- read.csv('../data/ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = "character")

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

  ## Return hospital name in that state with lowest 30-day death rate
  data <- data[data$state == state & data[outcome] != 'Not Available', ]
  vals <- data[, outcome]
  row <- which.min(vals)

  data[row, ]$hospital
}
