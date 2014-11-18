## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cachedMatrix <- NULL
  set <- function(newMatrix) {
    cachedMatrix <<- NULL
    x <<- newMatrix
  }
  get <- function() x
  getInverse <- function() cachedMatrix
  list(set = set, get = get, solve = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  solve(x$get())
        ## Return a matrix that is the inverse of 'x'
}
