using HDF5, JLD
function dt_hdf_save(N::Int)
  x = rand(N);
  try rm("output_$N.hdf5") catch end
  @elapsed @save "output_$N.hdf5" x
end

function dt_hdf_load(N::Int)
  dt_hdf_save(N)
  @elapsed @load "output_$N.hdf5" x
end

println(1024,"  ", dt_hdf_save(1024))
println(1024,"  ", dt_hdf_load(1024))
