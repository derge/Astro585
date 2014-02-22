function f(x::Array)
       return exp(-0.5*x.^2)/sqrt(2pi)
end

function integrate(a::Float64,b::Float64,N::Int)
        dx = (b-a)/(N+1);
        x = Array(Float64,N)
        #tic();
        for i = 1:N
                x[i] = a + dx*i
        end
        #toc();
        sum(f(x))*dx
end
