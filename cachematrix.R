## Functions create an inverse matrix and then cache said value

## creates a an inverse of matrix x

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
  x <<- y
  m <<- NULL
  }
get <- function()x
setsolve <- function(solve) m <<- solve
gotsolve <- function()m
list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## creates a cache for the above value

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
