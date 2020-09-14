###Day 1 Lesson

## Lines that start with a # will not be executed in R
## So we often start comment lines with a #
## Comments help you to remember what you did and why you did it.
## We recommend you comment profusely!

#################################
##### 1.1 ORIENTATION TO R  #####
#################################

## R can be used for basic arithmetic

1 + 1

2 * 3

3^4

## It can also store values in variables
 # assign an object using <-, =

x = 1

 # see that object

x

x + 1

 # objects can be numbers, characters

y = 'cat'

y + 1

## We can make vectors using c() to concatenate
 # vectors can include numbers

c(1,2,3,4,900,5)

  # we can use colons to get sequences of numbers

1:100

 # vectors can include characters (in quotes)

c(1, 'cat', 500)

## Manipulating a vector object 
 # We can get summaries of vectors

x = c(1,4,6,10)

  # we can see how long a vector is

length(x)

  # use [] to get parts of vectors

x[1:2]
x[c(1,4)]

## Operations act on each element of a vector
  # +2

x + 2

  # *2

x*2

  # mean

mean(x)

  # ^2

x^2

## Operations can also work with two vectors
  # x + y

y = c(3,4,5,6)

x + y

  # x * y

x * y

## We can keep track of what objects R is using, with the functions ls() and objects()
 # how to get help for a function

?mean

help(mean)

?ls

ls()

 # you can get rid of objects you don't want
  # rm()

rm(x)

 # and make sure it got rid of them

ls()

## remember annotate your code! For you and so you can share

            # EXERCISE 1.1 # 


########################################
##### 1.2 CHARACTERIZE A DATAFRAME #####
########################################

#useful functions: install.packages(), library(), data(), str(), dim(), colnames(), rownames()
                 # class(), as.factor(), as.numeric(), unique(), t(), max(), min(), mean(), summary()


## Install a package; We're going to use the package MASS
install.packages('MASS')

## Call library(package)

library("MASS")

## We're going to use data on UScereal
 # load the data (it's called UScereal)

data(UScereal)

 # See what this data looks like
  # head(), tail()

head(UScereal)
tail(UScereal)

  # str()

str(UScereal)

  # data from packages usually has additional info like a function

?UScereal
help(UScereal)
  # dim(), ncol(), nrow()

dim(UScereal)
ncol(UScereal)
nrow(UScereal)

  # colnames(), rownames()

colnames(UScereal)
rownames(UScereal)

  # Rstudio allows us to View() the data

View(UScereal)

## Classes of data & subsetting datasets
## How to access parts of the data
 # one element

UScereal[1,1]
UScereal[50,5]

 # one column

UScereal[,1]

 # one row

UScereal[1,]

 # we can look at a single column at a time
  # there are three ways to access this $, [,#], [,"a"]

UScereal[,1]
UScereal[,'mfr']
UScereal$mfr

  # sometimes it is useful to know what class() the column is

class(UScereal[,'mfr'])

 # we can look at a single row at a time
  # there are two ways to access this [#,], ["a",]

UScereal[1,]
UScereal['100% Bran',]

## we can select more than one row or column at a time
 # see two columns

UScereal[,c(2,6)]

UScereal[,c('calories', 'fibre')]

 # and make a new data frame from these subsets

us <- UScereal[,c('calories', 'fibre')]

## But what if we actually care about how many unique things are in a column?
 # unique()

unique(UScereal[,'mfr'])

 # table()

table(UScereal[,'mfr'])

 # levels(), if class is factor

levels(UScereal[,'mfr'])


## If your data is transposed in a way that isn't useful to you, you can switch it.
##  note that this often changes the class of each column!
##  In R, each column must have the same type of data
 # t()

t(UScereal)

## It's important to know the class of data if you want to manipulate it.
##   for example, you can't add characters!
## UScereal is made of many types of data
##   some common classes are: factors, numeric, integers, characters, logical
 # class()

class(UScereal)
class(UScereal[,'mfr'])
class(UScereal[1,4])

 # str()

str(UScereal)

## Often we want to summarize data
 # calculate mean() of a column

mean(UScereal[,'sugars'])

 # max()

max(UScereal[,'sugars'])

 # min()

min(UScereal[,'sugars'])

 # summary()

summary(UScereal[,'sugars'])

## Sometimes, the values we care about aren't provided in a data set
##  When this happens, we can create a new column
  # what if what we cared about was our salt/calorie ratio?

colnames(UScereal)

  # add a salt/calorie ratio column

UScereal[,'sodium'] / UScereal[,'calories']

UScereal[,'salt.calorie'] = UScereal[,'sodium'] / UScereal[,'calories']


  # look at our dataframe again

dim(UScereal)

colnames(UScereal)


           ## EXERCISE 1.2 ##


##############################################
##### 1.3 SUBSETTING DATASETS & LOGICALS #####
##############################################

# useful commands: "==", "!=", ">", "<", "&", "|", which

# Reminder: assignment operators in R 
 # <-
 # =

## logical conditions vs. assignment operators
 # logical values of TRUE and FALSE are special in R

TRUE
FALSE


 # What class is a logical value?

class(TRUE)

 # Logical values are stored as 0 for FALSE and 1 for TRUE
 #  so you can do math with them
  # sum()

TRUE + 1
FALSE + 1

sum(c(TRUE,TRUE,FALSE,FALSE))

!TRUE

!c(TRUE,TRUE,FALSE,FALSE)

## logicals will be the output of various tests
 # equals

1 == 1
1 == 2

 # does not equal

1 != 1
1 != 2

 # greater than

1 > 1
1 >= 1

 # less than

1 < 3

 # combining logical conditions with and (&), or(|)

1 == 1 & 2 == 2
1 == 1 & 1 == 2
1 == 1 | 1 == 2
 
 # we can take the opposite of a logical by using !

!TRUE

### Testing for conditions can be extended to vectors and columns of data frames
 # Which numbers in 1:10 are greater than 3?

1:10 > 3

 # How many numbers in 1:10 are greater than 3?

sum(1:10 > 3)

 # Which cereals have over 100 calories?

UScereal[,'calories'] > 100

 # Using which() to identify which rows match the logical values (TRUE)

which(UScereal[,'calories']>100)

length(which(UScereal[,'calories']>100))

 # Subset rownames() to see which ones match

rownames(UScereal)[which(UScereal[,'calories']>100)]
rownames(UScereal)[UScereal[,'calories']>100]

 # What if I only want to see cereals made by General Mills with 
 #  over 100 calories/cup?

UScereal[,'calories'] > 100 & UScereal[,'mfr'] == 'G'

rownames(UScereal)[UScereal[,'calories'] > 100 & UScereal[,'mfr'] == 'G']

    ### EXERCISE 1.3 ###


###############################
##### 1.4 GET DATA INTO R #####
###############################

# useful commands: getwd(), setwd(), read.csv(), list.files()

## We saw earlier how to get data into R from a package,
##  but what if we have a file saved outside of R?
 # first, we need to figure out which directory, a.k.a. folder, R is looking in
  # getwd()

getwd()

 # we can change this to a useful folder
  # setwd()

setwd('/Users/mcstitzer/Downloads/')

  # it's also possible to setwd through the "Session" menu of RStudio



 # Then, we can see which files are in the current directory
  # list.files()

list.files()

  # Which .csv file is present?


## We can read in csv files with read.csv()
##  and tab delimited files with read.table()
 # read.csv()

sl = read.csv('sleep.csv', header=T, stringsAsFactors=FALSE)

 # the option "stringsAsFactors" may be relevant in other datasets
 #  check out how to use it in the help for read.csv()

       #### EXERCISE 1.4 ####

################################
##### 1.5 CLEANING UP DATA #####
################################

# useful commands: duplicated(), is.na(), na.omit(), complete.cases(), duplicated(), !duplicated()

### NAs and missing values
## NA is another special value, like TRUE or FALSE
## it is the placeholder for missing data in R

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

# add 1 to NA
NA + 1 # returns NA

# index values that are NA
which(is.na(x))

# index values that are not NA
which(!is.na(x))

# keep only non-missing values in a vector
x[!is.na(x)]

# set missing values to NA 
# e.g. if "." stands in for missing in your raw data
z = c("Tuesday", "Monday", ".", ".", "Friday")
z
z[z == "."] = NA
z

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