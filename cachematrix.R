## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCacheMatrix is a parent function and it will create a matrix object that can cache inverse
makeCacheMatrix <- function(x = matrix()) {
 
   j <- NULL
  set <- function(y){
    x <<- y
    j <<- NULL
} 
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)


}


## Write a short comment describing this function
## cacheSolve function computes the inverse of the matrix created with the above mentioned function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  j <- x$getInverse() ## assigns inverse to j
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j
}
}
