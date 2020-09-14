#In this challenge exercise, we're going to explore a dataset from an experiment on the effect of diet on early growth of chicks.
#At the end, we will use two useful packages: R Color Brewer which creates nice color palettes
#	and R Markdown to turn our analysis into a final report

#If you'd like to skip ahead to have more time with R Color Brewer and R Markdown,
#	feel free to skip questions 8 and 9b

##1. Download and read the comma-separated file "ChickWeight.cvs"


#2a. First, explore the data. How many chicks are in the dataset? How many different diets are in the experiment?


#2b. What are the range of chick weights in the dataset?


#2c. What chick was the heaviest? Lightest?


#3. To vizualize the basics of the data, plot weight versus time


#4. Create a multipanel plot of the first four chick weight versus time
#Useful functions: par()


#5. Plot a histogram of the weights of the chicks at the final day of the experiments (i.e. only the chicks who made it to the last day)


#6. Create a boxplot where the x-axis represents the different diets and the y-axis is the weights of the chicks at the final day of the experiments


#7. Find the last time entry for each chick in the dataset and plot a histogram of these times



#8a. Create a function that adds points to a existing plot for an individual chick's weight over time
# As arguments for the function be just the individual chick to be plotted
# In plotting, change "type" to plot both lines and points
# Have the color argument be able to take a vector of colors which length diet type (that you will make later) so that each diet has the same color across chicks
# (You can update this function later - if you're having trouble with coloring by diet, try plotting everything the same color first)


#8b. Now, create an empty plot to add these points to (hint: can recreate the first plot with "col = NULL")


#8c. Create a vector of color values to pass the function so that each diet type has a different color line/points
#Useful functions: rainbow()


#8d. Now, use your function to add lines/points to the plot for all chicks


#8e. Overlay a solid, thick red line of average weight (across all chicks) at each time interval on top of this graph


#8f. Add a legend to specify what the solid, thick red line represents

#9. Try using the package R Color Brewer to generate color palettes. Go to http://colorbrewer2.org/ to vizualize palettes. You can choose palettes that are colorblind safe, print friendly, etc.

#9a. Install R Color Brewer


##Examples of R Color Brewer

#9b. Define color pallete with 10 colors and re-plot histogram of histogram of the weights of the chicks at the final day of the experiments in these colors
#Note: if histogram has n breaks and n is less than 10, it will just use first n colors. If n is greater than 10, it will reuse colors.


#9c. Re-do final plot with new colors and solid lines instead of points and lines


##10. Now, let's put this into R Markdown, a package that makes nice final reports of your code and figures
#Go back and make sure your plots have interpretable axes labels and titles
#If you're interested, change the colors and point/line types to make your figures more vizually appealing

#10a. Install R Markdown


#10b. Use R Studio to create new R Markdown file with the relevant code and output that you generated above. Create an HTML document 

