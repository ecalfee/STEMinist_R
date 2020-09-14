## Day 2 Lesson

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
