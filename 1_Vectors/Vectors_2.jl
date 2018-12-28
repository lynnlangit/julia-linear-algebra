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

ones(2)                         creates one vector of dim 2
rand(2)                         creates rand vector of dim 2
