## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## a matrix function for
## 1. get current matrix variable
## 2. set current matrix variable
## 3. get inverse of current matrix variable
## 4. set inverse of current matrix variable
makeCacheMatrix <- function(x = matrix()) {
   inverse <-NULL
   set <- function(y){
      x <<-y
      inverse <<-NULL
   }
   get <- function() x
   setInverse<- function(inv) inverse <<-inv
   getInverse<-function() inverse
   list(set=set, get=get,
        setInverse = setInverse,
        getInverse = getInverse
        )
}


## Write a short comment describing this function
## 1. check if parameter x has cached inverse
## 2. if cache exists, return  cache
## 3. if cache doesn't exists, calculate inverse of x and
## set inverse to cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <- x$getInverse()
   if(!is.null(inv)){
       message("getting cached data")
      return(inv)
   }
   matrix <- x$get()
   inv <- solve(matrix, ...)
   x$setInverse(inv)
   inv
}
