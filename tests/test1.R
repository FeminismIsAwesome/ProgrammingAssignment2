test.examples <- function() {
  checkEquals(addNumber(1,2), 3, "should add numbers together")
}

test.shouldSaveMatrixInCachedMatrix <- function() {
  myMatrix <- matrix(c(1,2,3,4,5,6,5,8,5), nrow =3, ncol = 3)
  cachedMatrix <- makeCacheMatrix(myMatrix)
  checkEquals(cachedMatrix$get(), myMatrix, "should store the matrix")
}

test.shouldReturnACachedMatrix <- function() {
  myMatrix <- matrix(c(1,2,3,4,5,6,5,8,5), nrow =3, ncol = 3)
  inversedMatrix <- solve(myMatrix)
  cachedMatrix <- makeCacheMatrix(myMatrix)
  checkEquals(cacheSolve(cachedMatrix), inversedMatrix, "should be able to compute the inverse and store")
}

test.shouldRecomputeInverseWhenValuesHaveChanged <- function() {
  myMatrix <- matrix(c(1,2,3,4,5,6,5,8,5), nrow =3, ncol = 3)
  cachedMatrix <- makeCacheMatrix(myMatrix)
  anotherMatrix <- matrix(c(1,5,5,4,5,6,5,8,5), nrow =3, ncol = 3)
  anotherMatrixInverse <- solve(anotherMatrix)
  cachedMatrix$set(anotherMatrixInverse)
  checkEquals(cacheSolve(cachedMatrix), anotherMatrix, "should be able to recompute inverse if values change")
}