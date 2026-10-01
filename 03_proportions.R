# 1. One proportion 
# 83 of 100 seeds germinated. Manufacturer claims 90% germination
prop.test (x=83, n = 100, p = 0.9, alternative = "two.sided", correct = FALSE)

#Two proportions, k = 0 (pooled)  
prop.test(x = c(60,28), n = c(3740, 3740), alternative = "greater", correct = "FALSE")

#3. Manually building the CI to match the slide formula exactly
p_hat <- 45/300
q_hat <- 1 - p_hat 
n <- 300
z <- qnorm(0.975)
ci_lower <- p_hat - z * sqrt(p_hat * q_hat / n)
ci_upper <- p_hat + z * sqrt(p_hat * q_hat / n)
c(ci_lower, ci_upper)
