# Palmer Penguins Data Analysis
This repository contains R code for cleaning and visualizing the Palmer Penguins dataset. The project aims to explore the relationships between different measurements of penguins using common data manipulation and visualization techniques in R.

## Data
The analysis uses the palmerpenguins dataset, which is a well-known dataset containing measurements for three species of penguins: Adelie, Chinstrap, and Gentoo. The data includes measurements like culmen (bill) length and depth, flipper length, body mass, sex, and island where the penguin was observed.

## Setup
**To run the code in this repository, you need to have R installed, along with the following R packages:**
here: For easy file path management.
skimr: For quick data summaries.
janitor: For data cleaning tasks, like standardizing column names.
dplyr: For data manipulation (filtering, selecting, grouping, summarizing).
palmerpenguins: Contains the dataset.
ggplot2: For data visualization.

## Analysis Steps
The R script performs data cleaning and visualization steps.

### Data Cleaning
**The data cleaning section includes examples of:**
+ Summarizing Data: Getting a quick overview of the dataset using skim_without_charts().
+ Glimpsing Data: Viewing the structure of the dataset with glimpse().
+ Selecting Columns: Choosing specific columns or excluding columns using select().
+ Renaming Columns: Changing column names using rename().
+ Standardizing Names: Cleaning column names to a consistent format using clean_names().
+ Arranging Data: Sorting the data based on a column in ascending or descending order using arrange().
+ Grouping and Summarizing: Calculating summary statistics (like mean or max) for groups within the data using group_by() and summarise(), often combined with drop_na() to handle missing values.
+ Filtering Data: Selecting rows based on specific conditions using filter().

### Visualization
**The visualization section uses ggplot2 to create various plots:**
+ Basic Scatter Plot: Plotting the relationship between two variables (flipper length and body mass).
+ Adding Aesthetics: Mapping variables like species to color, shape, size, or alpha transparency.
+ Changing Color: Setting a fixed color for all points.
+ Adding Multiple Geoms: Combining different plot types, like geom_smooth (for trend lines) and geom_jitter (to reduce overplotting).
+ Facetting: Creating separate plots for different categories using facet_wrap() (for one variable) or facet_grid() (for two variables).
+ Annotations: Adding titles, subtitles, captions, and text annotations to the plot using labs() and annotate().
+ Saving Plots: Saving the created plot to a file (e.g., PNG) using ggsave()
