###Day 1 Lesson

## Lines that start with a # will not be executed in R
## So we often start comment lines with a #
## Comments help you to remember what you did and why you did it.
## We recommend you comment profusely!

#################################
##### 1.1 ORIENTATION TO R  #####
#################################

## R can be used for basic arithmetic



## It can also store values in variables
 # assign an object using <-, =


 # see that object


 # objects can be numbers, characters


## We can make vectors using c() to concatenate
 # vectors can include numbers


  # we can use colons to get sequences of numbers


 # vectors can include characters (in quotes)


## Manipulating a vector object 
 # We can get summaries of vectors


  # we can see how long a vector is


  # use [] to get parts of vectors


## Operations act on each element of a vector
  # +2


  # *2


  # mean


  # ^2


## Operations can also work with two vectors
  # x + y


  # x * y


## We can keep track of what objects R is using, with the functions ls() and objects()
 # how to get help for a function


 # you can get rid of objects you don't want
  # rm()

 # and make sure it got rid of them


## remember annotate your code! For you and so you can share

            # EXERCISE 1.1 # 


########################################
##### 1.2 CHARACTERIZE A DATAFRAME #####
########################################

#useful functions: install.packages(), library(), data(), str(), dim(), colnames(), rownames()
                 # class(), as.factor(), as.numeric(), unique(), t(), max(), min(), mean(), summary()


## Install a package; We're going to use the package MASS


## Call library(package)

library("MASS")

## We're going to use data on UScereal
 # load the data (it's called UScereal)


 # See what this data looks like
  # head(), tail()


  # str()


  # data from packages usually has additional info like a function


  # dim(), ncol(), nrow()


  # colnames(), rownames()


  # Rstudio allows us to View() the data



## Classes of data & subsetting datasets
## How to access parts of the data
 # one element


 # one column


 # one row


 # we can look at a single column at a time
  # there are three ways to access this $, [,#], [,"a"]


  # sometimes it is useful to know what class() the column is


 # we can look at a single row at a time
  # there are two ways to access this [#,], ["a",]


## we can select more than one row or column at a time
 # see two columns


 # and make a new data frame from these subsets


## But what if we actually care about how many unique things are in a column?
 # unique()


 # table()


 # levels(), if class is factor



## If your data is transposed in a way that isn't useful to you, you can switch it.
##  note that this often changes the class of each column!
##  In R, each column must have the same type of data
 # t()


## It's important to know the class of data if you want to manipulate it.
##   for example, you can't add characters!
## UScereal is made of many types of data
##   some common classes are: factors, numeric, integers, characters, logical
 # class()


 # str()


## Often we want to summarize data
 # calculate mean() of a column


 # max()


 # min()


 # summary()


## Sometimes, the values we care about aren't provided in a data set
##  When this happens, we can create a new column
  # what if what we cared about was our salt/calorie ratio?


  # add a salt/calorie ratio column


  # look at our dataframe again


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


 # What class is a logical value?


 # equals


 # does not equal


 # greater than


 # less than


 # combining logical conditions with and (&), or(|)

 
 # we can take the opposite of a logical by using !



### Testing for conditions can be extended to vectors and columns of data frames
 # Which numbers in 1:10 are greater than 3?


 # Which cereals have over 100 calories?


 # Using which() to identify which rows match the logical values (TRUE)


 # Subset rownames() to see which ones match


 # What if I only want to see cereals made by General Mills with 
 #  over 100 calories/cup?


    ### EXERCISE 1.3 ###


###############################
##### 1.4 GET DATA INTO R #####
###############################

# useful commands: getwd(), setwd(), read.csv(), list.files()

## We saw earlier how to get data into R from a package,
##  but what if we have a file saved outside of R?
 # first, we need to figure out which directory, a.k.a. folder, R is looking in
  # getwd()


 # we can change this to a useful folder
  # setwd()


  # it's also possible to setwd through the "Session" menu of RStudio


 # Then, we can see which files are in the current directory
  # list.files()


  # Which .csv file is present?


## We can read in csv files with read.csv()
##  and tab delimited files with read.table()
 # read.csv()


 # the option "stringsAsFactors" may be relevant in other datasets
 #  check out how to use it in the help for read.csv()

       #### EXERCISE 1.4 ####


