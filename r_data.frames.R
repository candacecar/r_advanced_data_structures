##Data Frames
##Notes are taken from "R for Everyone: Advanced Analytics and Graphics" 
##by Jared P. Lander
##Chapter 5: Advanced Data Structures

## data.frames

#Create a data frame using these three vecotors

x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse",
       "Basketball", "Tennis", "Cricket", "Soccer")

theDF <- data.frame(First = x, Second = y, Sport = q)
theDF

#Check number of attributes

nrow(theDF)

ncol(theDF)

dim(theDF)

names(theDF)

names(theDF) [3]

rownames(theDF)

#Add names to rows

rownames(theDF) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight",
                     "Nine", "Ten")
rownames(theDF)

# Set them back to generic index

rownames(theDF) <- NULL
rownames(theDF)

#Head function prints the first few rows

head(theDF)

head(theDF, n = 7)

tail(theDF)

class(theDF)

theDF$Sport

#Select row and column number

theDF[3, 2]

theDF[3, 2:3]

theDF[c(3, 5), 2]

theDF[c(3, 5), 2:3]

theDF[, 3]

theDF[, 2:3]

theDF[2, ]

theDF[2:4, ]

theDF[, c("First", "Sport")]

theDF[, "Sport"]

class(theDF[, "Sport"])

theDF["Sport"]

class(theDF["Sport"])

theDF[["Sport"]]

class(theDF[["Sport"]])

#These methods return different outputs, some are vectors some are data frames.
#The argument "drop=FALSE" will insure a single-colum data.frame while using
#single square brackets

theDF[, "Sport", drop = FALSE]
class(theDF[, "Sport", drop = FALSE])

theDF[, 3, drop = FALSE]
class(theDF[, 3, drop = FALSE])

##Use model.matrix to create a set of dummy variables

newFactor <- factor(c("Pennsylvania", "New York", "New Jersey", "New York", "Tennessee Massachsuetts", 
"Pennsylania", "New York"))
model.matrix(~newFactor - 1)



