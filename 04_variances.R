# CI for one variance (mean unknown - the usual case)

weights <- c(46.4, 46.1, 45.8, 47, 46.1, 45.9, 45.8, 46.9, 45.2, 46)
n <- length(weights)
S2 <- var(weights)
alpha <- 0.05
chi_upper <- qchisq(1 - alpha/2, df = n-1)
chi_lower <- qchisq(alpha/2, df = n - 1)

ci_lower <- (n -1) * S2 / chi_upper
ci_upper <- (n -1) * S2 / chi_lower
c(ci_lower, ci_upper)

# Hypothesis test for one variance  
# H0: sigma^2 = 1600 (sd = 40), H1: sigma^2 > 1600.  n=40, S=48.5
n <- 40; S<- 28.5; sigma0_sq <- 1600
chi_cal <- (n - 1) * S^2 / sigma0_sq
chi_crit <- qchisq(0.95, df = n - 1)
chi_cal; chi_crit
chi_cal > chi_crit

# 3. Ratio of two variances / comparing two variances (F-test) 
old_process <- rnorm(25, mean = 10 , sd = sqrt(1.04))
new_process <- rnorm(25, mean = 10, sd = sqrt(0.51))
var.test(old_process, new_process, alternative = "greater")
# H0: var equal. alternative="greater" tests var(old) > var(new)