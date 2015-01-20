## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv<<-NULL
    set<-function(y){
    x<<-y
    inv<-NULL
    }
    get<-function() x
    setInverse<-function(inverse_matrix) inv<<-inverse_matrix
    getInverse<-function() inv
    list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	Cache<-makeCacheMatrix(x)
	inv<-cache$getInverse()
	if(!is.NULL(inv)){
	return(inv)
	}
	inv<-solve(x)
	Cache$setInverse(inv)
	inv
}
