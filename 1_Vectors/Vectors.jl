using LinearAlgebra

# Vectors are created with '[]'
x = [ -1.1, 0.0, 3.6, -7.2 ]    # using commas
length(x)
z = [ -1.1; 0.0; 3.6; -7.2 ]    # using semicolons
length(z)

# Vector Operations
x[3]                            # 1-based indexing
x[3] = 4.0;                     # assignment
y = x;                          # y references x
y = copy(x);                    # y makes a new copy of x
y == x;                         # check vector equality

a = [ 1.3]
b = 1.3
a == b                          # false, scalars != 1-vector arrays
a[1] == based                   # true, first element same

# Stack Vectors
x = [1, -2]; y = [1,1,0];       # concat stacked vectors with ';'
z = [x;y]
g = [1, -2]; h = [1,1,0];       # using vertical concatenate
z = vcat(g,h)

#Watch out!
z = (x,y)                       # list of 2 vectors
z = [x,y]                       # array of 2 vectors


