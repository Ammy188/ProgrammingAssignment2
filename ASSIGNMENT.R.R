## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function()x                                 #get value of the matrix
  setInverse <- function(inverse) inv <- inverse     #set value of the invertible matrix
  getinverse <- function() inv                       #get value of the invertible matrix
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)){                            #if the matrix is not null
    message("Getting Cached Invertible Matrix")       #Type message: Getting Cached invertible matrix
    return(invMatrix)                                 #return the invertible matrix
  }
  MatrixData <- x$getMatrix()                         #get original matrix data
  invMatrix <- solve(MatrixData, ...)                 #use solve function to inverse the matrix
  x$setInverse(invMatrix)                             #set the invertible matrix
  return(invMatrix)                                   #return the invertible matrix
}

  }
}
