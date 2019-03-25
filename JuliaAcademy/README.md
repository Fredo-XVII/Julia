# hold

# Class Notes

### Shortcuts
 - [escape a, escape b, escape x] = [new cell above, new cell below, delete cell]

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
 
 - Make your own macro/unicode names:
  - \epsilon: 
  
### Packages
 - BenchmarkTools: run simulation of runtime of code.
 - LinearAlgebra:
  - zeros(5, 5): 5x5 zero matrix
  
 - Interact: html widget - Slider
  - @manipulate:
 - Colors:

### Code
 1. import Pkg; Pkg.add("DataFrames")
using DataFrames
