srand(42);
Nobs = 10000;
z = zeros(Nobs);
sigma = 2.*ones(Nobs);
y = z + sigma .* randn(Nobs);
normal_pdf(z, y, sigma) = exp(-0.5*((y-z)/sigma)^2)/(sqrt(2*pi)*sigma);

function log_likelihood(z::Array,y::Array,sigma::Array)
   n = length(y);
   sum = zero(y[1]);
   for i in 1:n
    sum = sum + log(normal_pdf(z[i],y[i],sigma[i]));
   end;
    return sum;
end
