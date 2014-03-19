function mat_prod2(A::Array,b::Array)
   @assert typeof(A) == Array{Float64,2};
   @assert typeof(b) == Array{Float64,1};
   @assert size(A,2) == size(b,1);
   product = zeros(size(A,1));

   tic();
   for i= 1:size(A,1)
       for j = 1:size(A,2)
        product[i] += A[i,j]*b[j]
       end
   end
   product;
   toc();
end
