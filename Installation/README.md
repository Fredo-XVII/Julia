# Installation Notes

# Hadoop
  - use miniconda to install julia.  Julia 1.0.3 has a working IJULIA
  - update all packages in conda: **LINUX:** .ananconda/bin/conda update --all 
  - install, or re-install julia: **LINUX:** .ananconda/bin/conda conda install -c conda-forge julia
    - source: https://anaconda.org/conda-forge/julia
  - update env variable in julia: **LINUX:** -> ENV["JULIA_PKGRESOLVE_ACCURACY"]=2
  - update packages in julia: **LINUX:** ./julia -> Pkg.update()
