#Matrices
##Notes are taken from "R for Everyone: Advanced Analytics and Graphics" 
##by Jared P. Lander
##Chapter 5: Advanced Data Structures

#Create a 5x2 matrix
A <- matrix(1:10, nrow = 5)
A
nrow(A)
ncol(A)
dim(A)

#Create a 5x2 matrix
B <- matrix(21:30, nrow = 5)
B

#Create a 5x2 matrix
C <- matrix(21:40, nrow = 2)
C

A + B

A * B

A == B

# t to transpose

A %*% t(B)

colnames(A)
rownames(A)

colnames(A) <- c("Left", "Right")
rownames(A) <- c("1st", "2nd", "3rd", "4th", "5th")
A

colnames(B)
rownames(B)

colnames(B) <- c("First", "Second")
rownames(B) <- c("One", "Two", "Three", "Four", "Five")
B

colnames(C)
rownames(C)

colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top", "Bottom")
C

t(A)

A %*% C


