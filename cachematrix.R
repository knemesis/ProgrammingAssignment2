## Put comments here that give an overall description of what your
## functions do
## Creates an object with matrix variable and a method that calculates it matrix inverse if it hasn't been calcualted before

## Write a short comment describing this function
## creates an object with a matrix variable and get/set methods for the matrix and inverse variables
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function
## method to act on the object created above to calculate the inverse and set the inverse variable in the object. It will skip
## the calculation if it has already been done
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached inverse")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}
