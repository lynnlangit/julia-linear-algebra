using LinearAlgebra

# Parameters in regression model 
beta = [148.73, -18.85]; v = 54.40; 
y_hat(x) = x'*beta + v;
# Evaluate regression model prediction 
x = [0.846, 1]; y = 115;
y_hat(x), y                     # (161.37557999999999, 115)
x = [1.324,2];  y = 234.50;
y_hat(x), y

using VMLS                      # see below to install package
D = house_sales_data();
price = D["price"]
area = D["area"]
beds = D["beds"]

v = 54.4017;
beta = [ 147.7251, -18.8534 ];
predicted = v .+ beta[1] * area + beta[2] * beds;

using Plots
scatter(price, predicted, lims = (0,800));
plot!([0, 800], [0, 800], linestyle = :dash);
# make axes equal and add labels
plot!(xlims = (0,800), ylims = (0,800), size = (500,500));
plot!(xlabel = "Actual price", ylabel = "Predicted price");

# Install VMLS to JuliaBox
# Go to git, enter 'https:////github.com/VMLS-book/VMLS.jl.git'
# Go to package manager, add 'VMLS'
# Wait up to 15 minutes (for package build)

# --OR--

# Install VMLS to Julia runtime (local machine)
# Go to Julia prompt, type ']' to open package manager
# Get library from 'pkg>' prompt 
#    type 'add https:////github.com/VMLS-book/VMLS.jl'
#    'ctrl + C' to exit pakage manager prompt




