using LinearAlgebra

# Define function and gradient
f(x) = x[1] + exp(x[2]-x[1]); 
grad_f(z) = [1-exp(z[2]-z[1]), exp(z[2]-z[1])];
z = [1, 2];
f_hat(x) = f(z) + grad_f(z)'*(x-z);

# Compare f and f_hat for some specific x’s
f([1,2]),  f_hat([1,2])

f([0.96,1.98]),  f_hat([0.96,1.98])

f([0.96,1.98]),  f_hat([0.96,1.98])



