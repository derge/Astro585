using HDF5, JLD
function dt_hdf_h5write(N::Int)
  x = rand(N);
  try rm("output2_$N.hdf5") catch end
  @elapsed h5write("output2_$N.hdf5", "mydata/x", x)
end
println(1024,"  ", dt_hdf_h5write(1024))
