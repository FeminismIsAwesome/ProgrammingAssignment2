## Makes a cached matrix "object" using lists, as per the vector example
makeCacheMatrix <- function(x = matrix()) {
  cachedMatrix <- NULL
  set <- function(newMatrix) {
    cachedMatrix <<- NULL
    x <<- newMatrix
  }
  get <- function() x
  getInverse <- function() cachedMatrix
  setInverse <- function(newInverse) {
    cachedMatrix <<- newInverse
  }
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Returns the cached function.
## If the cached matrix already exists, return: otherwise compute
## this works because set() clears the inverse already existing.

cacheSolve <- function(cachedMatrix, ...) {
  if(is.null(cachedMatrix$getInverse())) {
    cachedMatrix$setInverse(solve(cachedMatrix$get()))
  }
  cachedMatrix$getInverse()
        ## Return a matrix that is the inverse of 'x'
}
