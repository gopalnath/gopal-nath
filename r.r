---
title: 'Part 1: Simulation Exercise'
author: "Gopal Nath"
date: "June 14, 2017"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Project

In this project we will investigate the exponential distribution in R and compare it with the Central Limit Theorem. The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate parameter. The mean of exponential distribution is 1/lambda and the standard deviation is also 1/lambda. Set lambda = 0.2 for all of the simulations. You will investigate the distribution of averages of 40 exponentials. We use thousand simulations


## Problem 1: 
```{r}

set.seed(1) 
lambda <- 0.2    
n <- 40         
s <- 1000   

simu <- data.frame(mean=numeric(s))

for (i in 1:s) {
  samples <-rexp(n,lambda) 
  simu[i,1]<-mean(samples) 
}

thm <- 1/lambda       
sam <- mean(simu$mean)

sam
thm

hist(simu$mean)

## Sample mean = 4.990025 and Theoratical mean =5.
## We also see on histogram, sample mean close to 5.
```

## Problem 2

```{r}
thva<-((1/lambda)^2)/n
sava<-var(simu$mean)
thva
sava
## we see theoretical variance is close to sample variance.
```

## Problem 3:
```{r}
qqnorm(simu$mean)

## We see QQ plot is close to straight line. So distribution is normal. 
```
## Conclusion:
For large sample size the mean of all samples  is close   to the mean of the population.