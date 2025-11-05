# START R Programming Lab


# import built in data set from R
# This famous iris data set gives the measurements in centimeters of the variables 
# sepal length and width and petal length and width, respectively
# for 50 flowers from each of 3 species of iris. 
# The species are Iris setosa, versicolor, and virginica.
str(iris)


boxplot(iris$Petal.Length)


boxplot(Petal.Length~Species,
        data=iris,
        main="Median Petal Length for Different Species of Iris Flowers",
        xlab="Species",
        ylab="Petal Length (cm)",
        col="lightblue",
        border="black"
)

boxplot(iris$Petal.Width)

boxplot(Petal.Width~Species,
        data=iris,
        main="Median Petal Width for Different Species of Iris Flowers",
        xlab="Species",
        ylab="Petal Width (cm)",
        col="purple",
        border="black"
)


# statistical significance test using ggplot
# add significance to plot 
library(ggplot2)
library(ggsignif)


ggplot(iris, aes(x=Species, y=Petal.Length)) + 
  geom_boxplot(color="red", fill="pink", alpha=0.5) +
  geom_signif(comparisons = list(c("versicolor", "virginica")), 
              map_signif_level=TRUE) 

# _____________________________________________________________________

ggplot(iris, aes(x=Species, y=Petal.Length)) + 
  geom_boxplot(color="red", fill="pink", alpha=0.5) +
  ggtitle("Median Petal Length for Different Species of Iris Flowers") +
  xlab("Species") + ylab("Petal Length (cm)") +
  geom_signif(comparisons = list(c("versicolor", "virginica"), 
                                 c("setosa", "versicolor"),
                                 c("setosa", "virginica") ), 
              map_signif_level=TRUE, y_position = c(7,5.5,8),) 


# _____________________________________________________________________
# copy this code and do the same for Petal Width
# customize your plot

