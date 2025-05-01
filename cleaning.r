# packages using for data cleaning
install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("dplyr")
library(here)
library(skimr)
library(janitor)
library(dplyr)
install.packages("palmerpenguins")
library("palmerpenguins")
#summary of data set
skim_without_charts(penguins)
# qucik idea of data set
glimpse(penguins)
# chosse columns except one column (or using select(penguins, -speacies)) but using pipes is more clear
penguins %>%
select(-species)
# rename a column
penguins %>%
rename(island_new=island)
# make column to uppercase, or using 'tolower' with lower case
rename_with(penguins, toupper)
# standardize column names
clean_names(penguins)

# arrange a column ascendung order (using -bill_length_mm for descending ord)
penguins %>%
arrange(bill_length_mm)

# using group by to specify the column to grouyp by then perform summary of mean of length of each island
penguins %>% 
group_by(island) %>%
drop_na() %>%  # eliminate null valeurs
summarise(mean_bill_length_mm = mean(bill_length_mm))
# using 2 arguments
penguins %>% 
group_by(species, island) %>% 
drop_na() %>% 
summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
View(penguins)
#using filter
penguins %>% filter(species == "Adelie")


