## Put comments here that give an overall description of what your
## functions do

# Creates a cache Matrix
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse
# get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinv <- function(inv) m <<- inv
    getinv <- function() m
    list(set      = set, 
         get      = get,
         setinv = setinv,
         getinv = getinv)
}


## Calculate the inverse of makeCacheMatrix. If in cache return the cache.

cacheSolve <- function(x, ...) {
    m <- x$getinv()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- inv(data)
    x$setinv(m)
    m
    
}
