## Put comments here that give an overall description of what your
## functions do

### These two functions create and cache the inverse of a matrix

## Write a short comment describing this function
### This function create a matrix that containing a list 
### of functions that set and get the value of the matrix,
### set the inverse, and get the inverse.

makeCacheMatrix <- function(x = matrix()) {

    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <- NULL
    }
    get <- function() x
    setinv <- function(solve) inv <<- solve
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
### This function calculates the inverse of the matrix
### created with the first function. If the inverse has been 
### created already, it will get the inverse from the
### cache. Otherwise, it will calculate the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("Getting cached inverse...")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat, ...)
    x$setinv(inv)
    inv
}
