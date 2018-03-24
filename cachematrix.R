## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mainv <- NULL
  set <- function(y) {
    x <<- y
    mainv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) mainv <<- inverse
  getinverse <- function() mainv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  mainv <- x$getinverse()
  if(!is.null(mainv)) {
    message("getting cached data.")
    return(mainv)
  }
  data <- x$get()
  mainv <- solve(data)
  x$setinverse(inv)
  mainv
}

