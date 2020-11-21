# a)
set.seed(20141012)
variable1 <- sample(x = c(1:10, NA), size = 20, replace = TRUE)
variable2 <- runif(n = 20, min = 0, max = 1)
cor(x = variable1, y = variable2, 
    use = "pairwise.complete.obs", method = "kendall")

# b)
f1 <- function(x = {
  y <- 1
  2
}, y = 0) {
  x + y
}

f1()
f1(x = 7)
f1(y = 7)

# For x + y:
# f1() returns 3 (sum of x = 2 and y = 1 because y <- 1 and therefore the 
# default of y is not used)
# f1(x = <number>) returns <number> (sum of <number> and y = 0 because x is set 
# and therefore y is not set to 1, so the default for y is used)
# f1(y = <number>) returns 3 (sum of x = 2 and y = 1 because the default 2 for x
# is used and the parameter y is changed to 1) 
# f1(x = <number1>, y = <number2>) returns sum of <number1> and <number2> 
# (because no default is used)

# For y + x:
# f1() returns 2 (sum of y = 0 and x = 1 because for y and x the default is used)
# f1(x = <number>) returns <number> (sum of <number> and y = 0 because for y the
# default is used and for x the parameter)
# f1(y = <number>) returns sum of x = 2 and y = <number> because for y the
# parameter is used and for x the default)
# f1(x = <number1>, y = <number2>) returns sum of <number1> and <number2> 
# (because no default is used)

# For c(y, x, y): f1() returns the vector 0, 2, 1 (y default, x default, changed
# y through x default) f1(x = <number>) returns the vector 0, <number>, 0 (x set
# through parameter, therefore x default is not used and y not changed, so y
# default is used) f1(y = <number>) returns the vector <number>, 2, 1 (y is set
# through parameter, x default is used, therefore y is changed to 1) f1(x =
# <number1>, y = <number2>) returns the vector <number2>, <number1>, <number2>
# (because no default used)

# Lazy evaluation

# c)
f2 <- function(x = z) {
  z <- 100
  x
}

# f2() returns 100, f2(<number>) returns <number>
# if x is not specified z = 100 is used, otherwise the set parameter

# Lazy evaluation

# d)

`%xor%` <- function(logical1, logical2) { 
  
  checkmate::assert_logical(logical1)
  checkmate::assert_logical(logical2)
  
  xor(logical1, logical2)
}

# e)
# save par() as new variable <old>, 
# change it, 
# set it back with on.exit(par(<old>))
# same for options()
  
# f) 

# Save pdf-plot, even if input wrong 
 f3 <- function(...) {
  pdf()
  on.exit(dev.off())
  plot(...) 
}

# g) 

c <- 10
c(c = c)

# result vector with one entry (10) named "c
# First c vector function
# second c name of vector entry,
# third c value of first vector entry