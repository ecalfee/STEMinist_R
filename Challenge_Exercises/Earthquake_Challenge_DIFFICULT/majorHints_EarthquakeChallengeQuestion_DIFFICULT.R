#Earthquake challenge question: Should you be worried about earthquakes? Let's make a map. 
#These are my annotations and functions I used at each step. Choose your own objects as appropriate.
#This also includes that packages and librarys I used.

#Make a map in R. Use data from https://earthquake.usgs.gov/earthquakes/search/ to generate a map of earthquakes. 
#Play around with colors to make your map appealing and readable. 
#How big was the biggest earthquake? Put it on the map with a different symbol and color. 
#Put your home on the map, too, in another different color and symbol. 
#How far was your home from the biggest earthquake? 
#How far are you from the closest earthquake that happened recently? How big was it?
#Put it on the map too (in a different color). 
#How many earthquakes occured within a long days drive of you (500 miles)? How big was the biggest one of these?

#Feel free to ask your own questions, too, but these will get you started. Find your own mapping packages for creating a map (or see hints), but I recommend "geosphere" for calculating distances.

#useful functions (what I used to do this):
#dim(),distm(),install.packages(),library(),map(),mapply(),
#mapproject(),max(),min(),1 custom function,points(),read.csv()


#Make a map in R. Use data from https://earthquake.usgs.gov/earthquakes/search/ to generate a map of earthquakes. 
##install packages
##installing all the packages I'll use
install.packages(c("maps","mapproj","geosphere"))
library(maps)
library(mapproj)
library(geosphere)

##generate dataset
# get data from https://earthquake.usgs.gov/earthquakes/search/
# download a CSV from this site (you select the time period) I used the last 30 days

##import earthquake data in R
read.csv()

##Map all the recent earth quakes
##get a map
map()

##get points on the map
mapproject()
points()

#Play around with colors to make your map appealing and readable. 
##Map all the recent earth quakes
##get a map
map()

##get points on the map
mapproject()
points()


#How big was the biggest earthquake? Put it on the map with a different symbol and color. 

##How big was the biggest earthquake?
max()

##biggest earthquake on the map
<-mapproject()
points()

#Put your home on the map, too, in another different color and symbol. 

##get home on the map
###where do you live?
##my address where I used to live in lat and long
mylat =30.350697
mylong = -97.755591
mapproject()
##put on the map with a star
points()

#How far was your home from the biggest earthquake? 
max()
distm()


#How far are you from the closest earthquake that happened recently? How big was it? 
##Write a function to calculate distance from your home
fromhome<-function(){distm()}

##add this as a column in the original dataframe, using mapply
mapply()

##Look at the magnitude


#Put it on the map too (in a different color). 
##Let's put that on the map
min()

##get the coordinates in for the closest quake
mapproject()

##and plot it
points()


#How many earthquakes occured within a long days drive of you (500 miles)? How big was the biggest one of these?

##500 miles= 800,000 m
<

dim()
max()
