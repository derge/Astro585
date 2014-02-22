function f(x::Float64)
        exp(-0.5*x^2)/sqrt(2pi)
end

function integrate(a::Float64,b::Float64,N::Int)
        dx = (b-a)/(N);
        sum = 0.5*(f(a)+f(b))*dx
        tic();
        for i = 1:N
                sum += dx*(f(a+dx*i))
        end
        toc();
        sum;

end

