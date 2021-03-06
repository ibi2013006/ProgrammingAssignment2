## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
x
makeCacheMatrix <- function(x = matrix()) {
  
  
    mat <- NULL
    set <- function(y) {
      x <<- y
      mat <<- NULL
    }
    get <- function() x
    
    setinverse <- function(inverse) mat <<- inverse
    getinverse <- function() mat
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
        ## Return a matrix that is the inverse of 'x'
  mat <- x$getinverse()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  mat <- solve(data) %*% data

  x$setinverse(mat)
  mat
  
}
