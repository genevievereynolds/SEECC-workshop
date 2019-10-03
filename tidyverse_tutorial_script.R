#new Tidyverse script

install.packages("tidyverse")
library(tidyverse)

load("LPIdata_Feb2016.RData")
load("puffin_GBIF.RData")

puffins<-puffin_GBIF

#look at the first 6 rows of data
View(head(LPIdata_Feb2016)) #not in long format that we would want to use for analysis. it's wide, not long and tidy
#use gather() to transform the data into long format
LPI_long <- gather(data = LPIdata_Feb2016, key = "year", value = "pop", select = 26:70) #give it a new name, rename data something every time you manipulate it. make it descriptive. gathered dataset, key = what new column head will be, value is what's in the row? the things you're gathering, the values under what you're gathering. select is "collapse these columns"
# a tibble: a data frame in tidyverse 
#making sure there are no duplicate rows
LPI_long <- distinct(LPI_long)
distinct(LPI_long)
