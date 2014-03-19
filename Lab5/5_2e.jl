include ("HW5_Q2_lookup_table.jl")
include ("HW5_Q2_ecc_anom.jl")
using PyPlot
x = linspace(0.,2pi,128);
lookup_table = make_table_linear(y->ecc_anom(y,0.25,tol=1.e-12),0.,2pi,128);
x = linspace(0.,2pi,128);
scatter(x,lookup!(lookup_table,x,zeros(128)));
savefig("Lab5_2e.png")
