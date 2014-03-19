function mat_prod1(A::Array,b::Array)
       tic();
       @elapsed A*b
       toc();
end

