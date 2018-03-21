## Put comments here that give an overall description of what your
## functions do

## Creating a cache matric that invokes the solving function

makeCacheMatrix <- function(x = matrix()) {

  {
    inve<-NULL
  set<-function(y){
    x<<-y
    inve<<-NULL
    
  }
  
  get<-function()x
  setinverse<-function(inverse) inve <<-inverse
  getinverse<-function()inve
  list(set=set, get=get,setinverse=setinverse, getinverse=getinverse)
  }
}



## Finding the inverse of the given function

cacheSolve <- function(x, ...) {
  inve<-x$getinverse()
  if (!is.null(inve)){
    message(" reaching cached data ") #Checking for cached data
    return(inve)
  }
  data<-x$get()
  inve<-solve(data,...)
  x$setinverse(inve)
        #Function returns inverse of matrix
}
