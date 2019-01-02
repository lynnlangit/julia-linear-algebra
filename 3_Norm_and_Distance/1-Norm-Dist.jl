
using LinearAlgebra
using Statistics

x = [ 2, -1, 2];

# norm of x is written in Julia as norm(x)
norm(x)

sqrt(x'*x)

sqrt(sum(x.^2))

x = randn(10); y = randn(10)

lhs = norm(x+y)

rhs = norm(x) + norm(y)

# rms value of a vector is rms(x) = norm(x)/sqrt(length(x))
rms(x) = norm(x) / sqrt(length(x))

t = 0:0.01:1; # list of times

x = cos.(8*t) - 2*sin.(11*t)

rms(x)

using Plots

plot(t,x)

plot!(t, avg(x)*ones(length(x)))

plot!(t, (avg(x)+rms(x))*ones(length(x)), color = :green)

plot!(t, (avg(x)-rms(x))*ones(length(x)), color = :green)

plot!(legend = false)

# Define Chebyshev bound function
# The Chebyshev inequality states that the number of entries of an 
# n-vector x that have absolute value at least a is no more than 
# ∥x∥2/a2 = nrms(x)2/a2. If this number is, say, 12.15, 
# we can conclude that no more that 12 entries have absolute value 
# at least a, since the number of entries is an integer.

cheb_bound(x,a) = floor(norm(x)^2/a);
a = 1.5;
cheb_bound(x,a)
# Number of entries of x with |x_i| >= a
sum(abs.(x) .>= a)


