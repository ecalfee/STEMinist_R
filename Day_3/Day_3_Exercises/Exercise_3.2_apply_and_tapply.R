### Exercise - apply family -------------------------------------------------
#### useful commands: function(){ }, apply(), tapply(), hist(), dim(), prod(), sd()

# load state data
?state
data(state)

# this data is stored in a slightly different way than other datasets we've used so far
states = as.data.frame(state.x77) # run this line of code to avoid later confusion


### 01. what is the average population, income, and area of all 50 states? ------
apply(states[, c("Population", "Income", "Area")], 2, mean)# do this in one short line of code

### 02. what is the average area of the states from different regions of the country?
tapply(states$Area, state.region, mean)# Hint: use the object state.region in your environment --------------------------

### 03. Plot a histogram for each variable in the states data (Population, Income, Illiteracy etc.)
apply(states, 2, function(x) hist(x, main = name))

### 04. let's assume that we don't want to live in a state with high
# illiteracy, high murder, and many freezing days; also assume that each of
# these factors contribute equally to our opinion 
# (Illiteracy * Murder * Frost) = undesirable
undesirable = apply(states[, c("Illiteracy", "Murder", "Frost")], 1, prod)

### what 10 states should we avoid? ----------------------------------------------
# hint use prod(); and maybe order()
undesirable[order(undesirable, decreasing = T)][1:10]


### BONUS 05. Standardize all the variables in the states dataset and 
# save your answer to a new dataframe, states_standardized
# Hint: to standardize a variable, you subtract the mean and divide by the standard deviation (sd)
states_standardized = apply(states, 2, function(x) (x - mean(x))/sd(x))

### BONUS 06. Create a histogram again for each variable in the states data,
# but this time label each histogram with the variable names when you plot
# Hint: instead of using apply to iterate over the columns themselves, 
# you can often iterate over the column names with sapply

