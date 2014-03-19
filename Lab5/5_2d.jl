include ("/Users/jamyang/Astro585-1/Lab5/HW5_Q2_ecc_anom.jl")

# Plot the eccentric anomaly as a function of mean anomaly for an eccentricity of 0.25 over a range like (-2pi,4pi).

using PyPlot
x = linspace(0.,2pi,128)
y = ecc_anom(x,0.25);
scatter(x,y)
savefig("ecc_anom1.png")
