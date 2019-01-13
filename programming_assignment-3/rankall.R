rankall <- function(outcome, num = 'best') {
  ## Read outcome data
  data <- read.csv('../data/ProgAssignment3-data/outcome-of-care-measures.csv', colClasses = 'character')

  ## Only keep relevant columns
  data <- data[c(2, 7, 11, 17, 23)]
  names(data)[1] <- 'hospital'
  names(data)[2] <- 'state'
  names(data)[3] <- 'heart attack'
  names(data)[4] <- 'heart failure'
  names(data)[5] <- 'pneumonia'

  ## Check that outcome is valid

  outcomes <- c('heart attack', 'heart failure', 'pneumonia')
  if (!(outcome %in% outcomes)) stop('invalid outcome')

  ## Validate num value
  if(num != 'best' && num != 'worst' && num%%1 != 0) stop('invalid num')

  ## Order by hospital, outcome column
  data[outcome] <- as.data.frame(sapply(data[outcome], as.numeric))
  data <- data[order(data$hospital, decreasing = FALSE), ]
  data <- data[order(data[outcome], decreasing = FALSE), ]

  ## Helper function
  getRanks <- function(df, state, number) {
    # Check that state is valid
    if (!(state %in% data$state)) stop('invalid state')

    df <- df[df$state==state, ]
    vals <- df[, outcome]

    if (num == 'best') {
      row <- which.min(vals)
    } else if (num == 'worst') {
      row <- which.max(vals)
    } else {
      row <- num
    }
    df[row, ]$hospital
  }

  ## For each state, find the hospital of the given rank return a df with the
  ## hospital names and the (abbreviated) state name
  states <- data$state
  state_vec <- unique(states)

  new_df <- data.frame('hospital'=character(), 'state'=character())

  for (state in state_vec) {
    hospital <- getRanks(data, state, num)
    new_df <- rbind(new_df, data.frame(hospital=hospital, state=state))
  }

  new_df <- new_df[order(new_df['state'], decreasing=FALSE), ]

  new_df
}
