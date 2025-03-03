install.packages("palmerpenguins")
install.packages("ggplot2")
library(palmerpenguins)
library(ggplot2)
data(penguins)
View(penguins)
# plot relationship between variables of different columns
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g)) #this one
ggplot(data=penguins, mapping = aes(x=flipper_length_mm, y=body_mass_g)) + geom_point()

# add color n shape n size
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,
color=species, shape=species, size=species)) 
# them do dam nhat tuy loai
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g,
alpha=species))
# change color
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g),
color="purple")
# autres geom n add 2 geom n JITTER (help with overplotting)
ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
geom_jitter(mapping=aes(x=flipper_length_mm, y=body_mass_g))
 # bar chart n fill n cut
 ggplot(data=diamonds) +
 geom_bar(mapping=aes(x=cut, fill=clarity)) #clarity is a column
View(diamonds)

# FACET FUNCTION
#facet wrap
ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
facet_wrap(~species) # divide into 3 graphes by species
# facet grid
ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
facet_grid(sex~species)
# using filter function to create a data set only what u want'
onlineta_city_hotels <- filter(hotel_bookings,
(hotel=="City Hotel" & 
hotel_bookings$market_segment=="Online TA")) #variable marketsegments on column hotel bookinh
View(onlineta_city_hotels)

#ANNOTION add note to your plot
#label
ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
labs(title="Palmer Uy do hoi", subtitle = "sample 100", caption="data by be") +
annotate("text", x=220, y=3500, label="The Gentoos ar20=e  the largest", color="purple",
fontface="bold", size=4.5, angle=25) #inside plot
# using <- instead of copy paste all
p <- ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
labs(title="Palmer Uy do hoi", subtitle = "sample 100", caption="data by be") +
annotate("text", x=220, y=3500, label="The Gentoos are  the largest", color="purple",
fontface="bold", size=4.5, angle=25)
# then we have p instead of all
p+annotate("text", x=220, y=3500, label="Uy an cut" )

#SAVING PLOT BY USING GGSAVE
ggsave("plot.png")
# enhance plot quality to export
install.packages("Cairo")
library(Cairo)
png(filename="plot.png",
    type="cairo",
    units="in",
    width=5,
    height=4,
    pointsize=12,
    res=96)
my_sc_plot(data)
dev.off()
#or
 png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()
#or
pdf(file = "/Users/username/Desktop/example.pdf",    
       width = 4,     
       height = 4) 
plot(x = 1:10,     
        y = 1:10)
abline(v = 0)
text(x = 0, y = 1, labels = "Random text")
dev.off()

# using filter function to gain more insight
# Example code
data %>%
    filter(variable1 == "DS") %>%  
    ggplot(aes(x = weight, y = variable2, colour = variable1)) +  
    geom_point(alpha = 0.3,  position = position_jitter()) + stat_smooth(method = "lm")
=