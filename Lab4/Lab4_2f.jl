Pkg.add("Devectorize")
using Devectorize

function integrate(a::Float64,b::Float64,N::Int64)
        dx = (b-a)/(N+1);
        x = Array(Float64,N);
        tic();
        for i = 1:N
                x[i] = a + i*dx
        end

        c = 1/sqrt(2pi);
        @devec f = c.*dx.*exp(-0.5.*x.^2);

        return sum(f);
        toc();
 end

