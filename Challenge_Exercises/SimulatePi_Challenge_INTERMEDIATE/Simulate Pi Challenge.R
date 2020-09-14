# A short Monte Carlo simulation to estimate pi!
# Some useful functions: set.seed(), runif(), paste(), sum(), mean(), sapply(), sample(), 
# length(), hist(), abline(), function(){}, install.packages(), library()

# CHALLENGE: Pi is a very useful constant. What if you didn't know the value of pi?
# One way to estimate pi would be to draw a square on the ground and a perfect circle inside the square
# on a drizzly day. If you assume raindrops fall on random points on your drawing, 
# you could count the number of raindrops that fall inside your square and the number of raindrops that 
# fall inside your square AND your circle.
# One easy way to decide if a raindrop is 'inside the circle' is to pick a 'center' for your circle 
# and measure if each raindrop falls within some distance (the radius) to the center.
# Remember the area of a square is length^2 and the area of a circle is pi*radius^2,
# and since we assume the number of raindrops is proportional to the area on the ground, 
# we can use the ratio of raindrops that fall inside and outside of the circle to calculate pi!

# Your challenge is to use R to simulate 'raindrops', or random points within a square on the x-y 2D plane.
# Then you'll count the points inside and outside of a certain radius and use the ratio to estimate pi.
# At the end you'll use a install and use a package "cowsay" to have a cow (or other animal) tell you pi.
# Look at the HINTS file if you want some more help along the way.
# Good luck!


# Test your simulation first with a small number of simulations (n), 
# then when it's working increase n to get a more accurate estimate.



# Make a function that runs your simulation one time with a user-specified number of simulated raindrops/points



# Run your simulation multiple times, do you always get the same answer for pi?

# Find out what set.seed() does. This function is useful for reproducibility when researchers use simulations.
# Try setting different seeds, e.g. 5 or your favorite number, and rerunning your simulation.

# What happens if you rerun your simulation using the same seed each time? 
# To try this, you'll need to reset your seed inbetween each simulation run.


# Run your simulation 500 times, each time simulating 100 raindrops/points
# Plot the results using a histogram and add a vertical line for the true value of pi.
# Add another vertical line (in a different color) for the mean of your simulation results



# Install the package "cowsay" and make an animal say "True pi is (value of pi)!"
# The syntax to install a package is install.packages("my_package")
# AFTER install, before you can use a package, remember you need to run this line of code: library(my_package)
# R keeps a list of animals that you can view using names(animals) and the cowsay package lets them talk.
# Not challenging enough? Have a randomly chosen animal say "I think pi is (your simulation result)". 
# In one line of code, you should be able to generate a new simulation result and have the animal say it!



# Thousands of free open-source packages are posted online for use in R ... 
# most of them significantly less silly than "cowsay" ... go explore!
