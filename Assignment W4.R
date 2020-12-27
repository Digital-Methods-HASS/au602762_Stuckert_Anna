#Assignment

#1) Use R to figure out how many elements in the vector below are greater than 2 . 
#You need to filter out the NAs first
rooms <- c(1, 2, 1, 3, 1, NA, 3, 1, 3, 2, 1, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA) #Create vector
rooms_noNA <- na.omit(rooms) #Remove NAs 
rooms_noNA_above2 <- rooms_noNA[rooms_noNA > 2] #Creating new vector with only values above 2 from first vector
length(rooms_noNA_above2) #Calculating number of observations in the vector only containing values over 2

#There are 8 elements in the vector with values greater than 2.

# 2) What is the result of running median() function on the above 'rooms' vector? (again, best remove the NAs)
median(rooms_noNA)

# The result of running median () on the 'rooms' vector will result in the median 
#(i.e. the middle value, when ordering all the individual values in the vector after size) 
# of the vector, which is 1.5

#3) Inside your R Project (.Rproj), install the 'tidyverse' package and use the download.file() and read_csv() function to read the SAFI_clean.csv dataset into your R project as 'interviews' digital object (see instructions in https://datacarpentry.org/r-socialsci/setup.html and 'Starting with Data' section). 
#Take a screenshot of your RStudio interface showing 
#a) the script you used to create the object, 
#b) the 'interviews' object in the Environment and the 
#c) structure of your R project in the bottom right Files pane. 
#Save the screenshot as an image and put it in your AUID_lastname_firstname repository inside our Github organisation (github.com/Digital-Methods-HASS). Place here the URL leading to the screenshot in your repository.

dir.create("data")
getwd()
download.file("https://ndownloader.figshare.com/files/11492171",
              "data/SAFI_clean.csv", mode = "wb")
library(tidyverse)
interviews <- read_csv("data/SAFI_clean.csv")
