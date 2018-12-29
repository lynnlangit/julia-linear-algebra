using LinearAlgebra

# List Operations
x = [ 1.0, 0 ];   y = [ 1.0, -1.0 ];   z = [ 0, 1.0];

list = [ x, y, z ]              # lists 3 arrays w/elements
list[2]                         # lists elements of 2nd array
list[3]                         # lists elements of 3rd array
list = ( x, y, z )              # list of 3 arrays w/elements

# Creating vectors with Julia functions
zeros(3)                        # creates zero vector of dim 3

i = 3; n = 4;                   # sets values
ei = zeros(n);                  # creates zero vector of dim n
ei[i] = 1;                      # sets 3rd value to 1.0
ei                              # produces [ 0.0, 0.0, 1.0, 0.0]

unit_vector(i,n) = [zeros(i-1); 1 ; zeros(n-i)]
unit_vector(3,4)                # produces [ 0.0, 0.0, 1.0, 0.0]

ones(2)                         # creates one vector of dim 2
rand(2)                         # creates rand vector of dim 2

# Add or subtract vectors
[ 0, 7, 3] + [ 1, 2, 0]
[ 1, 9 ] - [ 1, 1] 

# Scalar vector operations
x = [ 0, 2, -1 ];
2.2 * x
x / 3
[ 1.1, -3.7, 0.3 ] .- 1.4       # '.' applies op to each element
0.7 .+ [1,-1]                   # '.' applies op to each element

p_1= [ 22.15, 89.32, 56.77 ];
p_2 = [ 23.05, 87.32, 57.13 ];
r = (p_2 - p_1) ./ p_1          # '.' applies op to each element

w = [1,2,2]; z = [1,2,3];
w == z                          # returns false
w .== z                         # returns true, true, false
