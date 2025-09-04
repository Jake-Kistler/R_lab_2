# task 1 and 2 are rather simple and have been only included in the rmd file 

# read data in 
dat <- read.csv("EPAGAS-1.XLS - Sheet1.csv")


head(dat)
names(dat)
mpg = dat$MPG
mpg

# Math time we've been asked to take mpg and turn it into z ok so I'm thinking z <- mpg()
# what these args are I have no idea time to go to the sample code and it's there...
# We also did this in class I have a mudworks file at C:\R_packages\Labs\In_class_mudworks\lab_2_mudworks
z <- ((mpg - mean(mpg)/ sd(mpg)))
z

# These z values are the number of standard divs we are alway from the true standard div. And std div is how far we are away from the mean 

# Now to somehow find outliners?
# this would be easy in a non functional language like cpp and for example just to test my thinking
# for(int i = 0; i < vec.size(); i++)
#{
# if(abs(vec[i]) > 3) def_outliner++;
# else if (abs(vec[i]) > 2) pot_outliner++;
#}

# R allows for c-like loops:https://www.statology.org/how-to-vectorize-in-r-with-example/

# we want to store both types of outliers so vectors for both
outliers <- c()
possible_outliers <- c()

for(i in 1:length(z)) # this gets us the length of elements in z this is like the standard for loop header in c but we start at 1 and not 0
{
  if(abs(z[i]) > 3) # make the comparison for 100% these are outliners 
  {
    outliers <- c(outliers, i) # this is like vect.push_back in cpp we just add data to the vector
  }
  else if(abs(z[i]) > 2) # make the check for possible outliners
  {
    possible_outliers <- c(possible_outliers, i) # append to the vector these values
  }
}

# Now to display both vecs
outliers
possible_outliers


