### Ex.  - for loops and sapply()   ----------------------------------------
# useful commands: for(){ }, print, paste, sample, plot, unique, points, rep, which


### Questions ------------------------------------------------------------------

### 01. Create a for loop to print "The year is xxxx" for 2010-2016.
for (y in 2010:2016){
  print(paste("The year is", y))
}

### 02. Instead of printing the answer from 01, save it as a character vector called 'my_years'. 
# You could do this with a for loop, but that would more difficult and less efficient, 
# so try using sapply()
my_years <- sapply(2010:2016, function(y) paste("The year is", y))
paste("The year is", 2010:2016)

### 03. Use a for loop to solve: Find the 100th number in the Fibonacci series: 1, 1, 2, 3, 5, 8, 13, 21 ... 
fib <- integer(length = 100)# make a vector length 100 of NA's to store the results
fib[1]<-1# set the first value of the vector = 1
fib[2]<-1# set the second value of the vector = 1
for (n in 3:100){# your for loop to fill in the rest of the fib vector
  fib[n] = fib[n-1] + fib[n-2]
}

### BONUS 03b. How many steps into the Fibonacci series until you get the first number over 10,000?
min(which(fib>10000))

### BONUS 04. use sapply() to plot a histogram of the data below 4 times, 
# in 4 different colors. 
# For extra style, title the plot by it's color, e.g. the red plot is titled "red"
data_to_plot = c(1,3,4,5,6,3,3,4,5,1,1,1,1,1)
par(mfrow = c(2,2))
sapply(rainbow(4), function(x) hist(data_to_plot, main = x, col = x))

### BONUS 05. How would you do question 2 above (print "The year is xxxx" for 2010-2016)
#  without using sapply() or a for loop?



