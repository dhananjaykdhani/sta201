#At a certain hospital, the weight of infants is normally distributed with a mean of 7.5 lbs and a standard deviation of 1.1 lbs.

# given
mu = 7.5
sd = 1.1

# What is the probability that a randomly selected infant at this hospital weighs more than 8 lbs?
a = 1 - pnorm(8, mu, sd)
a

#  What is the probability that a randomly selected infant at this hospital weighs exactly 7.5 lbs?
b = pnorm(7, mu, sd) - pnorm(7, mu, sd)
b

# Only 1% of all infants at this hospital weigh less than ______ lbs.
c = qnorm(1 / 100, mu, sd)
c

# 25% of all infants at this hospital weigh more than ______ lbs.
d = qnorm(1 - 25 / 100, mu, sd)
d

# If you randomly access records of 1000 infants at this hospital, how many of those infants would you expect to weigh more than 9 lbs?
e = (1 - pnorm(9, mu, sd)) * 1000
e