# 1. Unpaired t-test ( equal variance assumned , Case C)

group1 <- c(8,8,9,9,9,11,12,13,13,14,15,19)
group2 <- c(11,12,13,13,14,14,14,15,15,18,18,19)

# Always check normality first when n is small (rule of thumb n < 30)

shapiro.test(group1)
shapiro.test(group2)

# check equal variance assumption BEFORE choosing var.equal 
 
var.test(group1 , group2)

# Run the two - sample t - test

t.test(group1, group2, var.equal = TRUE )


# 2. Unpaired t-test , unequal variance ( Case D )

t.test(group1,  group2)

# 3. Paired t-test ( matched samples )

bottom_water <- c(0.430, 0.266, 0.567, 0.531, 0.707, 0.716, 0.651, 0.589, 0.469, 0.723)
surface_water <- c(0.415, 0.238, 0.390, 0.410, 0.605, 0.609, 0.632, 0.523, 0.411, 0.612)

t.test(bottom_water, surface_water, paired = TRUE, alternative = 'greater')

library(BSDA)

cityA <- c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99, 105, 109, 109, 109, 110, 112, 112, 113, 114, 114)
cityB <- c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109, 109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

z.test( x = cityA, y = cityB, mu = 0, sigma.x = 15, sigma.y =15)
