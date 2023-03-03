low = 0.695
high = 0.780
mean = 0.72
sd = 0.03
z1 = (low - mean) / sd
z2 = (high - mean) / sd
z1
z2

# 1 - pnorm(z2) is the area to the right of z2 pnorm(z1) is the area to the left of z1
rejection = pnorm(z1) + (1 - pnorm(z2))
rejection