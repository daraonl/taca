#' Calculate date interval from date/time variable with specific time constant


makedateinterval <- function(myData,   #data.frame
                               dateTimeVariable,  #Character string expressing date/time field name
                               periodInHours)  #Numeric value expressing interval to add/subtract from date/time field
{ dayEarly <- as(myData[,dateTimeVariable], "POSIXlt")
dayEarly$hour <- dayEarly$hour - periodInHours
dayLate <- as(myData[,dateTimeVariable], "POSIXlt")
dayLate$hour <- dayLate$hour + periodInHours
myIntervals <- new_interval(dayEarly, dayLate)
myIntervals
}
