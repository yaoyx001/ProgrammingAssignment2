## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
        In  <-  NULL
        set  <- function(){
                In <<- NULL
        }
        get  <- function(){
                x
        }
        setinverse  <- function(solve){
                In <<- solve(x)
        }
        getinverse  <- function(){
                In
        }
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        In <- x$getinverse()
        if(!is.null(In)) {
                message("getting cached data")
                return(In)
        }
        data <- x$get()
        In <- solve(data)
        x$setinverse(In)
        In
}
