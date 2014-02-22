function integrate(a::Float64,b::Float64,N::Int64)
        dx = (b-a)/(N+1);
        x = Array(Float64,N);
        tic();
        for i = 1:N
                x[i] = a + dx*i
        end
        f = map(x->exp(-0.5*x.^2)/sqrt(2pi)*dx,x)
        toc();
        return reduce(+,0.,f)
 end
