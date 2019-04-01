# hold

# Class Notes

### Shortcuts Jupyter Notebooks
 - [escape a, escape b, escape x] = [new cell above, new cell below, delete cell]

### CMD Julia
 - julia -i file_name: run file, open REPL
 - julia - E 'code': runc code, print results to console
 - julia -e 'code': execute code, no print
 - julie --project=. script.jl: run package in current directory.
 
### Functions
 - pyimport("numpy")["sum"]: imports python packages
 - typeof(1.0)
 - dump(): str() in R
 - unique():
 - sort():
 - sort!(): "bang" something is going to change to the arguement you pass in
 - show():
 - error("message"):
 - big(): true representation of a number, out to lots of decimals
 - """ string """: Allows for "" within the Triple Quotes. **NO Single Quotes in Julia**
 - lenght()
 - size()
 - axes() 
 - push!()
 - pushfirst!(fib, 0)
 - pop!()
 - popfirst!(fib)
 - copy(): makes a new dataset or dataframe.
 - map():
 - reshape(): converts to row from col
 - collect(): collects data and prints to the notebook.
 - savefig("filename"): savefig("plot.svg"):
 - isa(a,b): is a = b 
 - plot():
 - plot!():
 - length():
 - include("script.jl") - source() in R
 - skipmissing(data): remove NA
 - by(data, group by col, :col => mean): group by means
 
 - **Building Functions:**
  - methods(): tells what the methods are for the function
  - supertype(supertype(typeof(number))): see the hiearchy of the data types
  - Diagonal Dispatch/Method Dispatch: 
   - f(a::T, b::T) where {T<:Number} = 
  - Varargs Methods:
   - f(args::Number...) = 
   - f(args::T...) where {T<:Number} = 
  - Create a type:
   - struct fx_name <: Integer
      idx::Int
      len::Int
     end 

### Macros + {tab}: to call macro
 - @time: calculates run time of code
 - \approx: approximate equal sign.  
 - @simd: go ahead and add/process in any order
 - \in: Gives the math Element sign
 - \pi:
 - \integral:
 - \sqrt
 - \div: integer 
 - @less:
 - @which:
 - @edit:
 - @.: adds the 'dot' to the operators 
 - @code_native t():
 
 - Make your own macro/unicode names:
  - \epsilon: 
  
### Packages: LOAD_PATH
 - Pkg.add(""): 
 - BenchmarkTools: run simulation of runtime of code.
 - LinearAlgebra:
  - zeros(5, 5): 5x5 zero matrix
  
 - Interact: html widget - Slider
  - @manipulate:
 - Colors:
 - Pipeline:
 - .Threads: 
  - nthreads()
  - @threads
 - PackageCompiler.jl
  - build_executable: compiles code for faster runs
 - **Build Packages**: 
  - generate Packag_name (no parenths after generate)
  - activate .: active package from the package directory

### Code
 1. import Pkg; Pkg.add("DataFrames")
using DataFrames

### Saving workspace/data to disk
 - CSV.jl
 - serialize()/deserialize():
  - using Seilaztion
    open("workspace.jls","w+") do i0
       serialize(io,Dict(:S => S)
       serialize(io,Dict(:f => f)
    end
    workspace = open(deserialize,"workspace.jls")
    workspace[:f](3)
    f(x) = 3x + 5x^2 - functions don't serialize across sessions.
 - HDF5.jl
 - **names(Main)**: ls() in R
 -  
