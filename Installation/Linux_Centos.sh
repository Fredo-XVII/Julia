
# Installing Julia
## download julia
curl https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz -o julia.tar.gz

mkdir $HOME/.julia/
  
mv julia.tar.gz  $HOME/.julia/
  
tar -zxf julia.tar.gz

# start Julia
## resource: https://en.wikibooks.org/wiki/Introducing_Julia/Getting_started
./julia
