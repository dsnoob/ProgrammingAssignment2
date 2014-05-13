## Coursera's Datascience Specialization
## R-Programming Course
## Programming Assignment - 2
## @author: dsnoob
## @date: May 12, 2014


##

makeCacheMatrix <- function(x = matrix()) {

  ## initialize the variable
  inverse <- NULL

  ## set the
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }

  get <- function() {
    x
  }

  setInverse <- function(inv) {
    inverse <<- inv
  }

  getInverse <- function() {
    inverse
  }

  list(set = set,
    get = get,
    setInverse = setInverse,
    getInverse = getInverse)

}


##
## Takes a matrix and gets the inverse of the matrix from
## cache if it is available. If it is not available then
## solves to get the inverse and sets in the cache.
##
## @param x - a matrix
##

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  inv <- x$getInverse()

  if(is.null(inv)) {

    message("calculate inverse...")

    myMatrix <- x$get()

    inv <- solve(myMatrix, ...)

    x$setInverse(inv)

  } else {

    message("get inverse from the cache...")

    return(inv)
  }

}
