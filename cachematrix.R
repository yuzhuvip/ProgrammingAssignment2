<<<<<<< HEAD

=======
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

<<<<<<< HEAD
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
=======
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
<<<<<<< HEAD
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


=======
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
