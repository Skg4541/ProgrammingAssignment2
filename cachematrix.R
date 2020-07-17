## The following function cache and compute inverse of the matrix


## The function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
i<- NULL
set <- function(y){
x <<- y
i <<- NULL
}
get <- function()x
setInverse <- function(inverse)i<<-inverse
 getInverse <- function() i 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)

}


## This function computes the inverse of the matrix as rerturned
##by the "makeCacheMatrix" above.If the reverse has already been calculated,
## function retreives inverse from cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      j <- x$getInverse()
  if(!is.null(j)){
  message("getting cached data")
  return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
