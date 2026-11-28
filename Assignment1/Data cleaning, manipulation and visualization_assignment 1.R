# Import the downloaded original big dataframe called icosw3e02_0 from European Social Survey(ESS) Data Portal or read the csv file from a specific file path or directory where it is saved.
library(dplyr)
# We loaded the dplyr package to facilitate data manipulation as in the example from lab1.
newdata<-icosw3e02_0 |> select(city, borni = w3brncntr, durst = w3livedig, age = w3yrbrn, educ = w3eduyrs, sattrans = w3evaltran, satair = w3airqual, trstmun = w3trstplt_ic)
# We created a sub-dataframe from the original dataframe by using the function select () and renamed some of the variables. The new dataframe created is named "newdata".
rm(icosw3e02_0)
# Once we created a smaller dataframe for our use, we removed the original dataframe.
glimpse(newdata)
# glimpse() function is used to inspect or check whether we have the variables of interest in our new dataframe and to have a glimpse of the data.
library(tidyverse)
# to use ggplot() function and visualize the data, loading tidyverse package is required.
ggplot(newdata, aes(x= durst)) + geom_histogram(binwidth = 15) + labs(
  title = "Histogram for duration of stay", 
    x = "Duration of stay in years",
    y = "Counts"
) + theme_classic()
# to visualize the distribution of our dependent variable, duration of stay(durst), we draw a histogram
ggplot(newdata, aes(x= durst)) + geom_density()+ labs(
  title = "Density for duration of stay", 
  x = "Duration of stay in years",
  y = "Density" 
  ) + theme_classic()
# To get a better look of the distribution of duration of stay, we used a density function.
ggplot(newdata, aes(x = durst, color = city, fill = city))  + geom_density(alpha = 0.5) + labs(
  title = "Density for duration of stay by city", 
  x = "Duration of stay in years",
  y = "Density"
) + theme_classic()
# the distribution of duration of stay is inspected for the 2 cities, Munich and Paris, separately.


