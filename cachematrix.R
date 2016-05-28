## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#now create the Cache Matrix
makeCacheMatrix <- function(x = matrix()) {
  invrse<-NULL                                #set invrs as null
  set_value<<-function(y){                    #create a function set_value as follows:
    x<<-y
    invrse<-NULL
  }
  get_value<-function() x                         #now define the function get_value
  set_invrse<-function(inverse) invrse<-inverse   #define set_invrse function
  get_invrse<-function() invrse                   #define get_invrse function
  list(get_value=get_value,set_value=set_value,set_invrse=set_invrse,get_invrse=get_invrse)  #here list is a vector which can take any values
  }


## returns the cached inverse of the matrix

cacheSolve <- function(x, ...) {
        invrse<=x$get_invrse()
  if(!is.null(invrse)){
    message("getting cached data")
    return(invrse)
  }
  
matrix<-x$get_value()
invrse<-solve(mat,...)
x$set_invrse(invrse)
 }
