using LinearAlgebra

# Define and use function
f(x) = x[1] + x[2] - x[4]^2     # f(x) = x(1) + x(2) − x(4)^2
f([-1,0,1,2])                   # -5

# Superposition
# eval f at a linear combination of 2 vectors
# == forming the linear combination of f eval at the 2 vectors

a = [-2, 0, 1, -3];
f(x) = a'*x

x=[2,2,-1,1]; y=[0,1,-1,0];
alpha = 1.5;  beta = -3.7;
lhs = f(alpha * x + beta * y)

rhs = alpha * f(x) + beta * f(y)

# Verify superposition for f(e(3)) = a(3)
e3 = [0, 0, 1, 0];
f(e3)                           # 1.0

using Statistics
avg(x) = (ones(length(x)) / length(x))'*x; 
x = [1, -3, 2, -1];
avg(x)

