## Put comments here that give an overall description of what your
## Here we create a special matrix object capable of cahe its ##inverse.
## Also, it helps to set matrix, get matrix, set invers, and ##get inverse

makeCacheMatrix <- function(x = matrix()) {
	poroyeinv <- NULL
	set <- function(y) {
		x <<- y
		poroyeinv <<- NULL
	}
	
	get <- function() x
	setporoyeinv <- function(invers) poroyeinv <<- invers
	getporoyeinv <- function poroyeinv 
	list(set = set, get = get, setporoyeinv = setporoyeinv, getporoyeinv = getporoyeinv )

}


## Write a short comment describing this function
## Here the function computes the inverse of the special ## ## ## matrix and is returned using makeCacheMatrix above. If ## ## invese is already computed but Matrix remain unchanged then ## this function, cacheSolve will get the inverse from the ## ## cache 
cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
   	poroyeinv <- x$getporoyeinv()
	if(!is.null(poroyeinv)){
		message("gettting chached data")
		return (poroyeinv) 
	}		
	data <- x$get()
	poroyeinv <- solve(data)
	x$setporoyeinv (poroyeinv)
	poroyeinv 
}
