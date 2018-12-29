using LinearAlgebra

# Inner Product, note " x' "
x = [ -1, 2, 2 ];
y = [ 1, 0, -3 ];
x'*y

# Net present value
cashFlow = [ 0.1, 0.1, 0.1, 1.1 ];  
n = length(cashFlow);
interestRatePerPeriod = 0.05;   
d = (1+interestRatePerPeriod) .^ -(0:n-1)
netPresentValue = cashFlow'*d

# School age population
s = [ zeros(5); ones(14); zeros(81) ];
x=ones(100)
school_age_pop = s'*x

# Floating point ops
a = rand(); b = rand();
lhs = (a+b) * (a-b)
rhs = a^2 - b^2
lhs - rhs

# Show operation time
a = randn(10^5); b = randn(10^5);  
@time a'*b;
@time a'*b;
c = randn(10^6); d = randn(10^6); 
@time c'*d

# Sparse vectors
using SparseArrays
a = sparsevec( [ 123456, 123457 ], [ 1.0, -1.0 ], 10^6 )

length(a)                   # 1000000
nnz(a)                      # 2