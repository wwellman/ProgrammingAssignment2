

## This function consists of two functions that cache the inverse of a matrix.  
## makeCacheMatrix creates an object in the environment that can be accesssed by 
## the second funcetion cachesolve.  The first function makecacheMatrix creates a matrix object
## that can cache the inverse of the input matrix
## The second function, cachesolve, computers the invers of the matrix created by makeCachematrix
## If the inverse exists, cacheSolve retrieves the inverse from cache
## The two functions follow below.....


##makeCacheMatrix is a function creates an object, a matrix, that can cache its inverse   

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
            x <<-y
            m <<- NULL 
    }
 
get <- function() x
setcache <- function(cache) m <<- cache
getcache <- function() m
list(set = set, get=get, 
     setcache = setcache,
     getcache = getcache)
        
}
        

## end makeCacheMatrix





##  This function,, cachesolve computes the inverse of the special matrix created by makeCacheMatrix
##  If the inverse has been computed, then cacheSolve retrieves the inverse from Cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m <- x$getcache()
         if (!is.null(m) {
                 message )("getting cached data")
                 return (m)
         }
         data <- x$get()
         m <- solve(data,...)
         x$setcache(m)
         m

## end of cacheSolve function
          
        
}
l