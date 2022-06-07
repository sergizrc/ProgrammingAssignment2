## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Original example with mean
# makeVector <- function(x = numeric()) {
#     m <- NULL
#     set <- function(y) {
#         x <<- y
#         m <<- NULL
#     }
#     get <- function() x
#     setmean <- function(mean) m <<- mean
#     getmean <- function() m
#     list(set = set, get = get,
#          setmean = setmean,
#          getmean = getmean)
# }
##My function with inversion from the original example
makeCacheMatrix <- function(x = matrix()) {
    myinv <- NULL
    set <- function(y) {
        x <<- y
        myinv <<- NULL
    }
    get <- function() x
    mysetinverse <- function(inverse) myinv <<- inverse
    mygetinverse <- function() myinv
    list(set=set, get=get, mysetinverse=mysetinverse, mygetinverse=mygetinverse)
}

## Write a short comment describing this function
#Original example with mean
# cachemean <- function(x, ...) {
#     m <- x$getmean()
#     if(!is.null(m)) {
#         message("getting cached data")
#         return(m)
#     }
#     data <- x$get()
#     m <- mean(data, ...)
#     x$setmean(m)
#     m
# }
##My function with inversion from the original example
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    myinv <- x$mygetinverse()
    if(!is.null(myinv)) {
        message("getting cached data.")
        return(myinv)
    }
    data <- x$get()
    myinv <- solve(data, ...)
    #Applying inverse
    x$mysetinverse(myinv)
    myinv
}
