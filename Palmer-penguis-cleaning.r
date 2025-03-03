6# packages using for data cleaning
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

# TRANSFORM DATA
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
print(employee)
# separate name into last n first name
separate(employee, name, into = c("first_name", "last_name"), sep = " ")
# unite columns into 1
id <- c(1:10)
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, first_name, last_name, job_title)
print(employee)
unite(employee, "name", first_name, last_name, sep = " ")
# mutate: add column (need to load it first but i hasnt)
penguins %>%9
mutate(bdmass=body_mass_g/ 1000, flipper_length=flipper_length_mm/1000)
render("okk.hmml", output_format = "pdf_document")
