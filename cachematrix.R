## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  inverseMatrix <- NULL
  get <- function()
  {
    x
  }
  setInverseMatrix <- function(y)
  {
    inverseMatrix <<- y
  }
  getInverseMatrix <- function()
  {
    inverseMatrix 
  }
  
  list(get=get,setInverseMatrix=setInverseMatrix,getInverseMatrix=getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       
  inverseMatrix <- x$getInverseMatrix()
  originalMatrix <- x$get()
  
  if(nrow(originalMatrix ) != ncol(originalMatrix ))
  {
    print("Please input a square matrix.")
    return()
  }
  if(!is.null(inverseMatrix))
  {
    print("getting from cache")
    return(inverseMatrix)
  }
  
  inverseMatrix <- solve(originalMatrix)
  x$setInverseMatrix(inverseMatrix)
  inverseMatrix
}
