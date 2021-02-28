##Lists
#Lists can store objects of varying data types.

#data.frame to use in this exercise
x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball", "Curling", "Rugby", "Lacrosse",
       "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(First = x, Second = y, Sport = q)


#3 element list
list(1, 2, 3)

#single element list with a vector
list(c(1, 2, 3))

#two element list with two vectors
(list3 <- list(c(1, 2, 3), 3:7))

#Two element list with data.fram and vector
list(theDF, 1:10)

#3 element list with data.frame, vector, and a list
list5 <- list(theDF, 1:10, list3)
list5

#naming lists
names(list5) <- c("data.frame", "vector", "list")
list5

#names can be assigned to list elements during creation using name-value pairs
list6 <- list(TheDataFrame = theDF, TheVector = 1:10, TheList = list3)
list6

#creating an empty list of a certian size is done with a vector
(emptyList <- vector(mode = "list", length = 4))

#to access an element ofa  list, use double square brackets
list5[[1]]

list5[["data.frame"]]

#it is possible to append elements to a list simply by using an index
#(either numeric or named) that does not exist

length(list5)

#add a fourth element, unamed
list5[[4]] <- 2
length(list5)

#add a fifth element, named
list5[["NewElement"]] <- 3:6
length(list5)

names(list5)

list5

#appending a list is computationally expensive, that's why it's best to create
#a list at its final desired size then fill in the appropriate indices
