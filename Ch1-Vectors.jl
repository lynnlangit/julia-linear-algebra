
using LinearAlgebra

x = [ -1.1, 0.0, 3.6, -7.2 ]

length(x)

y = [ -1.1; 0.0; 3.6; -7.2 ]

length(y)

using Plots

temps = [ 71, 71, 68, 69, 68, 69, 68, 74, 77, 82, 85, 86,
 88, 86, 85, 86, 84, 79, 77, 75, 73, 71, 70, 70, 69, 69, 69,
 69, 67, 68, 68, 73, 76, 77, 82, 84, 84, 81, 80, 78, 79, 78,
 73, 72, 70, 70, 68, 67 ];

plot(temps, marker = :circle, legend = false, grid = false)


