# useful commands: function(), is.na, which, var, length, for(){ }, 
# points, print, paste, plot, unique, sample

#### for loops --------------------

# in many languages, the best way to repeat a calculation is to use a for-loop:
# e.g. square each number 1 to 10
squares = rep(NA, 10) # use rep to create a vector length 10 of NAs to store the result
for (i in 1:10) { # for loop
  squares[i] = i^2
}
squares

### a natural alternative to for-loops in R is using the 'apply' family
### while for-loops apply a function to one item at a time and then go on to the next one, 
### "apply" applies functions to every item at once

### sapply - "simplifying" apply (you want a vector back) ----------------------
?sapply 
# syntax: sapply(X = object_to_repeat_over, FUN = function_to_repeat)

# simple example of sapply over a vector
sapply(1:10, function(x)  x^2) # we can use an in-line function definition

# equivalently, we can define our own functions separately for sapply
# e.g. a function that calculates the area of a circle radius r, pi*r^2
areaCircle = function(r){
  return(pi * r^2)
}
sapply(1:10, areaCircle) # and then run sapply() with our new function

# in R, we can also just use short-hand for simple vector calculations:
pi*(1:10)^2

# but unlike the short-hand, sapply can also iterate over elements in a list
listy = list(a = TRUE, b = c("a", "b", "c"), c = 10:100)
str(listy) # look at the structure of 'listy'
length(listy) # look at the length of 'listy'

# use sapply to return a vector for length of each object within the list
sapply(listy, FUN = length) 

# you can also use sapply to create plots!
# e.g. use sapply to plot these 4 dataframes at once:
df1 = data.frame(x1 = 1:10, y1 = 1:10)
df2 = data.frame(x2 = 1:10, y2 = -1:-10)
df3 = data.frame(x3 = 1:10, y3 = 10:1)
df4 = data.frame(x4 = 1:10, y4 = 1:10)

my_list = list(df1, df2, df3, df4) # put 4 data frames together in a list

par(mfrow = c(2,2)) # set up frame for 4 plots
sapply(my_list, plot) # plot my_list with sapply


### Exercise 3.1 loops and sapply


### apply family - applies a function in a repetitive way ----------------------

# build some example data
m = data.frame(x = rnorm(50), y = rnorm(50), z = rnorm(50)) # rnorm generates random #s from the normal distribution

str(m)


### apply ----------------------------------------------------------------------

?apply
# example syntax
# apply(X = over this object, 
# MARGIN 1 for rows or 2 for columns, 
# FUN = apply this function)

apply(m, MARGIN = 2, mean) # apply: 2 (in second argument) indicates columns 

colMeans(m) # built-in function colMeans does the same thing

# we can do the same things across all rows
apply(m, MARGIN = 1, sum) == rowSums(m) # the argument MARGIN = 1 refers to rows 

# we can also pass specific in-line defined functions to apply

# how many elements in each column are negative numbers?
apply(m, 2, function(x)  length(x[x < 0]))

# find the mean of the non-negative numbers in each column
apply(m, 2, function(x)  mean(x[x >= 0]))


### lapply -- "list" apply -----------------------------------------------------
# returns a list while sapply -- "simple" apply -- returns a vector
lapply(1:10, function(x)  x^2) # lapply returns list
sapply(1:10, function(x)  x^2, simplify = FALSE) # same as an lapply
sapply(1:10, function(x)  x^2) # default is simplify = TRUE which retuns a vector


### tapply - "per Type" apply --------------------------------------------------

# load state data
?state
data(state)

states = as.data.frame(state.x77) # convert data to a familiar format - data frame
str(states) # let's take a look at the dataframe

# example syntax --- tapply(variable of interest, grouping variable, function)

# for each US region in our dataset, finds the mean of Frost for states in that region
tapply(states$Frost, state.region, mean) # state.region contains the region information for each state

# you can nest apply statements! Let's find the region average for all the variables in the states dataset
apply(states,
      2, # apply over columns of my_states
      function(x) tapply(x, state.region, mean)) # each column = variable of interest for tapply

### Exercise 3.2 apply and tapply



