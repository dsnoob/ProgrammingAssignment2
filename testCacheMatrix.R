## Coursera's Datascience Specialization
## R-Programming Course
## Programming Assignment - 2
## @author: dsnoob
## @date: May 12, 2014

##
## Write an R function is able to cache potentially time-consuming computations.
## If the contents of the vector are not changing then cache them and avoid
## intensive computations. This assignment gives an oppurtunity to learn the scoping rules
## of the R language and how they can be manipulated to preserve state inside of an R object.
##



## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(is.null(inv)) {
    message("calculate inverse...")
    myInv <- x$get()
    inv <- solve(myInv, ...)
    x$setInverse(inv)
  } else {
    message("get inverse from the cache...")
    return(inv)
  }

}
