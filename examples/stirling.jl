#=
Created on 09/01/2021 14:50:19
Last update: -

@author: Michiel Stock
michielfmstock@gmail.com

Implement Stirling's approximation for the factorial.
=#

using Plots

stirling(n) = n * log(n / exp(1)) + 0.5log(2π*n)

# here we use `m=:circle` to use the :circle symbols as a marker on our plots.

plot(1:10, n->log(factorial(big(n))), m=:circle, label="log-factorial")
xlabel!("n")
plot!(stirling, 1:10, m=:circle, label = "Stirling's approximation")


