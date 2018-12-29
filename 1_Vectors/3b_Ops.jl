using LinearAlgebra

# Linear Combination
a=[1,2]; b=[3,4]; 
alpha = -0.5; beta = 1.5; 
c = alpha*a + beta*b

# Define function
function lincomb(coeff, vectors)
    n = length(vectors[1])  
    a = zeros(n);
    for i = 1:length(vectors)
        a = a + coeff[i] * vectors[i];
    end
return a
end

#Alternate definition
function lincomb(coeff, vectors)
    return sum( coeff[i] * vectors[i] 
        for i = 1:length(vectors) )
    end

# Use funtion
lincomb( ( -0.5, 1.5), ( [1, 2], [ 3, 4]) )