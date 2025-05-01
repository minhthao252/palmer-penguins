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

# FACET FUNCTION
#facet wrap
ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
facet_wrap(~species) # divide into 3 graphes by species
# facet grid
ggplot(data=penguins) +
geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) +
facet_grid(sex~species)

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
