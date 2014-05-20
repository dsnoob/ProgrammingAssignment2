## Coursera's Datascience Specialization
## R-Programming Course
## Programming Assignment - 2
## @author: dsnoob
## @date: May 12, 2014


##
## Returns a list of functions for the given matrix.
## The inverse of the given matrix is cached.
## cacheSolve solves and will set the inverse when
## and returns the matrix.
##
## @param x - a matrix to get the inverse.
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
## @param x - a matrix to get the inverse.
##

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'

  inv <- x$getInverse()

  ## If the matrix is null, get the matrix calculate the inverse of it
  ## and set the inverse of the matrix. The control essentially goes
  ## into this condition if the inverse of the given matix is not found
  ## in the cache.

  if(is.null(inv)) {

    message("calculate inverse...")

    myMatrix <- x$get()

    inv <- solve(myMatrix, ...)

    x$setInverse(inv)

    return (inv)

  }

    message("get inverse from the cache...")

    return (inv)

}
