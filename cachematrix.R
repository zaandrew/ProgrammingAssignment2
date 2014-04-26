#This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
<<<<<<< HEAD
        m <- x$getsolve()
=======
         m <- x$getsolve()
>>>>>>> 9fcefc1d7659d0f502126d9c1e8732899bd95ec8
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
<<<<<<< HEAD
        #m <- solve(data)
=======
	  #m <- solve(data)
>>>>>>> 9fcefc1d7659d0f502126d9c1e8732899bd95ec8
        m <- solve(data, ...)
        x$setsolve(m)
        m
}


