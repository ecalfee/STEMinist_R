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
is.na(x)

# index values that are NA
which(is.na(x))

# index values that are not NA
which(!is.na(x))

# set NA values to 0
x[is.na(x)] = 0
x

x[x == 0] = NA
x

# remove incomplete rows (those with NAs) from a data.frame
test = data.frame(
  x = c("a", "b", "c", "d", "d"),
  y = c(1, 2, 3, 4, NA))

test

# na.omit()
test2 = na.omit(test)

# na.exclude() does about the same thing
na.exclude(test)

# which rows are complete (have no NA values)? 
# complete.cases - looks along each row, and each column, for NA values
complete.cases(test)

#na.rm as argument for some functions (e.g. mean)
y = c(1, 4, 9, 13, NA)
mean(y)
?mean
mean(y, na.rm = TRUE)

# check for duplicated rows
test = data.frame(
  x = c("a", "b", "c", "d", "d"),
  y = c(1, 2, 3, 4, 4))

test

# duplicated
duplicated(test)

# index non-DUPLICATED ROWS and remove them
test[!duplicated(test), ]

## Exercises 1.5

########################
##### 2.1 Plotting #####
########################

# useful commands: plot, points, lines, abline, hist, barplot, boxplot
# useful arguments within plot(): main, xlab, ylab, col, pch, cex

## Load cereal dataset from MASS package
#install.packages("MASS") #should have installed from yesterday
library("MASS")
data(UScereal)

head(UScereal)

## Scatterplots
# plot() -- to make a scatterplot
# plot calories versus sugar content
colnames(UScereal)
plot(UScereal[ ,"sugars"], UScereal[, "calories"])
?plot

plot(x = UScereal[ ,"sugars"], y = UScereal[, "calories"])
plot(UScereal[ , "calories"] ~ UScereal[ , "sugars"])

plot(UScereal$sugars, UScereal$calories)

# or plot response variable as a function "~" of the predictor variable

## Arguments within plotting functions
# "col" argument changes color
plot(UScereal$sugars, UScereal$calories, col = "red")

# "pch" argument changes point character
plot(UScereal$sugars, UScereal$calories, pch = 3)

# "cex" argument changes size
plot(UScereal$sugars, UScereal$calories, cex = 0.3)

# "type" argument changes type ("l" = line, "p" = points, "b" = both)
plot(UScereal$sugars, UScereal$calories, type = "b")


# "lty" argument changes line type
plot(UScereal$sugars, UScereal$calories, type = "l", lty = 4)

# Adding labels to axes and title using "xlab", "ylab", and "main" arguments
plot(UScereal$sugars, UScereal$calories, xlab = "Sugars", ylab = "Calories",
     main = "Calories versus sugars")


# identify() to identify on specific points
identify(x = UScereal$sugars, y = UScereal$calories, labels = rownames(UScereal))

# points() adds points to existing plot
plot(UScereal$sugars, UScereal$calories)
points(x = UScereal[UScereal[ ,"mfr"] == "K", "sugars"], 
       y = UScereal[UScereal[ , "mfr"] == "K", "calories"], col = "red")

#lines() does same thing as points but makes line
# ablines() adds straight line to existing plot
abline(h = 300)
abline(v = 5)
abline(lm(UScereal$calories ~ UScereal$sugars))

# legend() to add legend to plot
plot(UScereal$sugars, UScereal$calories)
points(x = UScereal[UScereal[ ,"mfr"] == "K", "sugars"], 
       y = UScereal[UScereal[ , "mfr"] == "K", "calories"], col = "red")
legend("topleft", legend = c("Kellogs", "else"), col = c("red", "black"), pch = 1)
legend("topleft", legend = c("Kellogs", "else"), col = c("red", "black"), 
       pch = 1, cex = 0.8)


## Histograms
# make histogram of sugar content
hist(UScereal[ , "sugars"])
hist(UScereal$sugars)

##Barplots
# make barplot of manufacturers in dataset
barplot(table(UScereal$mfr))


#add color using rainbow()
barplot(table(UScereal$mfr), col = rainbow(6))

barplot(table(UScereal$mfr), col = c("red", "purple"))

##Boxplots
# make boxplot of sugar content versus shelf display
boxplot(UScereal$sugars ~ UScereal$shelf)

#Excerise 2.1

#########################
##### 2.2 Functions #####
#########################

# functions
# function ( list of arguments )  { body }

#make function that takes a number, x, and returns its square
my.square = function(x) {
  square = x^2
  return(square)
}

#test my function works
my.square(2)
my.square(199)

# ? to access R documentation for functions (optional arguments, examples, etc.)


# new function - paste()
#first, read documentation
?paste

#using paste()
paste(1, 2, 4, 5, sep = "*")
paste("cat", 5, "lettuce", sep = "!")


##write new cvs
write.csv(new, "nameNew.cvs")
?write.csv
