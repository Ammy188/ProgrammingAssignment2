## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) inv <- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)){
    message("Getting Cached Invertible Matrix")
    return(invMatrix)
  }
  MatrixData <- x$getMatrix()
  invMatrix <- solve(MatrixData, ...)
  x$setInverse(invMatrix)
  return(invMatrix)
}

  }
}
