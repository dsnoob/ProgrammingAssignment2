## This is more of a manual testing unlike RUnit, svUnit

## creates a square matrix of size 10X10


## initialize matrix before we test
x <- matrix(1:4, nrow=2, ncol=2)
m <- makeCacheMatrix(x)
s <- cacheSolve(m)
print(s)
s1 <- cacheSolve(m)
print(s1)
##
