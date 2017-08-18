########################################################
##### 1.5 DEALING WITH MISSING AND DUPLICATED DATA #####
########################################################

# useful commands: duplicated, is.na, na.omit, complete.cases, duplicated, !duplicated


# remove NA values from a vector

x <- c( 1, 4, 7, 3, NA)
x
mean(x)
class(x)
class(NA)

# we need to treat "NA" differently than other values
# R recognizes this as a numeric, but it is missing data
# this is a a logical -- indicating missing data

# is.na


# index values that are NA

# index values that are not NA


# set NA values to 0



# remove incomplete rows (those with NAs) from a data.frame
test = data.frame(
  x = c("a", "b", "c", "d", "d"),
  y = c(1, 2, 3, 4, NA))

# na.omit()

# na.exclude() does about the same thing


# which rows are complete (have no NA values)? 
# complete.cases - looks along each row, and each column, for NA values


#na.rm as argument for some functions (e.g. mean)



# check for duplicated rows
test = data.frame(
  x = c("a", "b", "c", "d", "d"),
  y = c(1, 2, 3, 4, 4))


# duplicated


# index non-DUPLICATED ROWS and remove them


## Exercises 1.5

########################
##### 2.1 Plotting #####
########################

# useful commands: plot, points, lines, abline, hist, barplot, boxplot
# useful arguments within plot(): main, xlab, ylab, col, pch, cex

## Load cereal dataset from MASS package
#install.packages("MASS") #should have installed from yesterday


## Scatterplots
# plot() -- to make a scatterplot
# plot calories versus sugar content

# or plot response variable as a function "~" of the predictor variable

## Arguments within plotting functions
# "col" argument changes color

# "pch" argument changes point character

# "cex" argument changes size

# "type" argument changes type ("l" = line, "p" = points, "b" = both)
# "lty" argument changes line type

# Adding labels to axes and title using "xlab", "ylab", and "main" arguments

# identify() to identify on specific points

# points() adds points to existing plot

# ablines() adds straight line to existing plot

# legend() to add legend to plot


## Histograms
# make histogram of sugar content

##Barplots
# make barplot of manufacturers in dataset

#add color using rainbow()

##Boxplots
# make boxplot of sugar content versus shelf display

#Excerise 2.1

#########################
##### 2.2 Functions #####
#########################

# functions
# function ( list of arguments )  { body }

#make function that takes a number, x, and returns its square


#test my function works


# ? to access R documentation for functions (optional arguments, examples, etc.)


# new function - paste()
#first, read documentation


#using paste()


