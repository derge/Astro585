srand(42);
Nobs = 10000;
z = zeros(Nobs);
sigma = 2. * ones(Nobs);
y = z + sigma .* randn(Nobs);

function opt_log_likelihood(y::Array, sigma::Array, z::Array)
   n = length(y);
   sum = zero(y[1]);
   for i in 1:n
    sum = sum + (-0.5*((y[i]-z[i])/sigma[i])^2)-log(sqrt(2*pi)*sigma[i])
   end;
    return sum;
end
