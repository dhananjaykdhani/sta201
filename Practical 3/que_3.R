# An instructor gave an exam to his class that had an average of 65 and standard deviation of 13. He decided to assign grades as follows: the top 6% and the bottom 6% will receive A’s and F’s, respectively. The next 16% in either direction will be given B’s and D’s, and the remaining students will receive C’s. Assuming that the grades on the exam are normally distributed, find the cutoffs for each grade level.

# given
average = 65
sd = 13
top = 6
bottom = 6
nxt = 16

# find cutoffs
a = qnorm(1 - top / 100, average, sd)
a
b = qnorm(1 - (top + nxt) / 100, average, sd)
b
c = qnorm((bottom + nxt) / 100, average, sd)
c
d = qnorm(bottom / 100, average, sd)
d
e = b - c
e