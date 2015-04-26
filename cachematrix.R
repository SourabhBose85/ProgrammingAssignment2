## The below functions take matrix as input and provides inverse as output
## It checks if inverse has been caculated for the matrix, if not then caulcates the inverse

## The below function takes matrix as input or sets the value of inverse. 
## It also sets the inverse value of matrix

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Below function checks if inverse of matrix is present. If present it returns the inverse.
## If not present it calculates the inverse and returns the inverse

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
