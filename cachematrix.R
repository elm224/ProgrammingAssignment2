## [Put comments here that describe what your functions do]
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix and cacheSolve work together to bring about the inverse of an invertible matrix in an efficient time-saving manner.
## In the first part, makeCaheMatrix makes a list which has a four membered function (set, get, setinverse, getinverse) that have set tasks, allowing the storage of the inverse of the "matrix" in cache. This function will:
# 1. set <- set the value of the matrix
# 2. get <- get the value of the matrix
# 3. setinverse <- set the value of the inverse of the matrix
# 4. getinverse <- get the value of the inverse of the matrix

MakeCacheMatrix <- function(x = matrix()) {
	inv <- Null
	set <- function(y) {
		
	}
	get <- function() x
	setinverse <- function(inverse) inv <<- inverse
	getinverse <- function() inv
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
	 
}


## In the second part, cacheSolve will calculate the inverse of the "matrix" that was returned by makeCacheMatrix. If the inverse is already computed, and the matrix is the same, the inverse from the cache will be retrieved by cacheSolve.

cacheSolve <- function(x, ...) {
		## Return a matrix that is the inverse of 'x'
	inv <- x$getinverse()
	if(!is.null(inv)) {
		message("getting cached data")
		return(inv)
	}
	data <- x$get()
	inv <- solve(date, ...)
	x$setinverse(inv)
	inv
}
