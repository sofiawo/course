
# 2.1 
?runif
?mean
?round
x <- runif(100, 1, 100) #generates n (100) random deviates between min (1) and max(100)
mean_x <- round(mean(x), 2) #calculates arithmetic mean and rounds until 2 decimal places
mean_x

x <- runif(100, 1, 100)
mean_x <- round(mean(x), 2)
mean_x

x <- runif(100, 1, 100)
mean_x <- round(mean(x), 2)
mean_x

x <- runif(100, 1, 100)
mean_x <- round(mean(x), 2)
mean_x
#produces random values, differ each time which leads to different mean values


x <- scale(runif(100, 1, 100))
mean_x <- round(mean(x), 2)
mean_x


# 2.2
x <- seq(1,1000,1)
x
x <- 1:1000
x

y <- rep(999, 1000)
x + y

a <- sum(x)
b <- sum(y)
a + b
#All people in total possess 1499500 Dollars.


# 2.3
n <- 1e4
scale <- 1.5e4
income <- round(rbeta(n=n, shape1=2, shape2=12) * scale, 2)
#random generation for the Beta distribution

library(ggplot2)
ggplot(data.frame(x = income), aes(x=x)) + 
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) +
  labs(x = "Gross income",
       y = "Counts") +
  theme_minimal()


#2.3.1
n <- 1e4
scale <- 1.5e4
income <- round(rbeta(n=n, shape1=2, shape2=20) * scale, 2)

ggplot(data.frame(x = income), aes(x=x)) + 
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) +
  labs(x = "Gross income",
       y = "Counts") +
  theme_minimal()

n <- 1e4
scale <- 20000
income <- round(rbeta(n=n, shape1=2, shape2=18) * scale, 2)

ggplot(data.frame(x = income), aes(x=x)) + 
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) +
  labs(x = "Gross income",
       y = "Counts") +
  theme_minimal()

n <- 1e4
scale <- 10000
income <- round(rbeta(n=n, shape1=4, shape2=4) * scale, 2)

ggplot(data.frame(x = income), aes(x=x)) + 
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) +
  labs(x = "Gross income",
       y = "Counts") +
  theme_minimal()

#income distribution assumption
n <- 1e4
scale <- 25000
income <- round(rbeta(n=n, shape1=4, shape2=22) * scale, 2)

ggplot(data.frame(x = income), aes(x=x)) + 
  geom_histogram(color = "#0065BD", fill = "#0065BD", alpha=0.5, bins = 100) +
  scale_x_continuous(breaks = seq(0, scale, 1e3)) +
  labs(x = "Gross income",
       y = "Counts") +
  theme_minimal()

#2.3.2
share <- sum(income)/n #or mean(income)
share
#each persons share is ~3707 Dollars of income

#2.3.3
income_s <- sort(income)
group <- c("Lower 10%", "Lower 50%", "Top 10%", "Top 1%")
p <- c(.1, .5, .9, .99)

boundary <- round(income_s[p*n], 0)

low10_m <- mean(income_s[c(1:(.1*n))])
low50_m <- mean(income_s[c(1:(.5*n))])
top10_m <- mean(income_s[c(1:(.9*n))])
top1_m <- mean(income_s[c(1:(.99*n))])

means <- round(c(low10_m, low50_m, top10_m, top1_m), 0)

income_summary <- data.frame(group, boundary, means)
income_summary
