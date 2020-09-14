## Day 2 Lesson

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


