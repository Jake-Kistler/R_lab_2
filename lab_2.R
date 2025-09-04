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
