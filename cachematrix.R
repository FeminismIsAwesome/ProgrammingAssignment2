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
  setInverse <- function(newInverse) {
    print("So lost....")
    cachedMatrix <<- newInverse
  }
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Returns the cached function.

cacheSolve <- function(cachedMatrix, ...) {
  if(is.null(cachedMatrix$getInverse())) {
    cachedMatrix$setInverse(solve(cachedMatrix$get()))
  }
  cachedMatrix$getInverse()
        ## Return a matrix that is the inverse of 'x'
}
