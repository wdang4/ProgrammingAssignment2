## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## create matrix object with cache

makeCacheMatrix <- function(x = matrix()) {
  
  #create inverse
  i <- NULL
  
  #set matrix
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
    
  }
  
  #return matrix
  get <- function() {
    m
  }
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  getInverse <- function() {
    i
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  
  #return cached object if set
  if(!is.null(m)) {
    return(m)
  }
  
  #else
  data <- x$get()
  
  m <- solve(data) %*% data
  x$setInverse(m)
  m
}
