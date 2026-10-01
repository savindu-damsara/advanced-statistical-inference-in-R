library(car)
library(agricolae)

# Using base R's built-in PlantGrowth dataset (3 groups: ctrl, trt1, trt2)
data("PlantGrowth")
str(PlantGrowth)
boxplot(weight ~ group, data = PlantGrowth, col = "lightblue",
        main = "Plant Weight by Treatment Group")

#Check assumption: normality within each group
tapply(PlantGrowth$weight, PlantGrowth$group, shapiro.test)

#Check assumption: equal variance across groups
leveneTest(weight ~ group, data = PlantGrowth)

#Run the one-way ANOVA 
model <- aov(weight ~ group, data = PlantGrowth)
summary(model)

#Post-hoc: Fisher's LSD (only meaningful if H0 was rejected above)
LSD.test(model, "group", console = TRUE)
