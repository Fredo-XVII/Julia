# Type Annotations

typeof(1)


supertype(typeof(1))


typeof(1) <: supertype(typeof(2))

# subtype operator <:
Int64 <: Signed

# there is also a 'supertype operator' (:>), used trivially here but more useful for parameterized types
Int64 >: Signed

using InteractiveUtils

function subtypetree(T, depth = 0) # you might also want to add 'max_depth'...
    println('\t' ^ depth, T)
    for t in InteractiveUtils.subtypes(T)
        subtypetree(t, depth + 1)
    end
end

# Arithmetic types
subtypetree(Number)

# Primitive types: primitive type «name» <: «supertype» «bits» end
primitive type Bool  <: Integer   8
primitive type Int64 <: Signed   64

# Concrete vs abstract types
struct Item # is this like a object?
    value   ::Int64
    weight  ::Int64
end

sizeof(Item)

fieldcount(Item)

fieldnames(Item)

fieldtypes(Item)

function showfields(T)
    for i in 1:fieldcount(T)
        println(
            fieldoffset(T, i),
            '\t',
            fieldname(T, i),
            "\t::",
            fieldtype(T, i)
        )
    end
end

showfields(Item)
0   value   ::Int64
8   weight  ::Int64

i1 = Item(1, 2)

i2 = Item(1, 2)

i1 == i2  # equal

i1 === i2 # actually, the same "interned" object

i1 == Item(1, 3)

mutable struct MutableItem # mutable version of 'Item'
           value   ::Int64
           weight  ::Int64
       end

i1 = MutableItem(1, 2)

i2 = MutableItem(1, 2)

# <- surprised? looks like '==' needs to be defined for custom mutable types...
i1 == i2  # not equal!

# Type annotations

# Typeasserts vs variable declarations

# typeassert
# promises to the runtime that at this point in the execution 'y' will be a Float64
y = 1
x = y::Float64

# variable type declaration]
# declares a new local 'x', marks it as always containing Float64 values, and initializes with 'y' converted to Float64
x::Float64 = y

# To appreciate the difference, compare
function foo()
         x ::Float64 = 1 # implies 'convert(Float64, 1)'
         x, typeof(x)
       end

foo()

function foo()
         x = 1 ::Float64 # implies 'typeassert(1, Float64)'
         x, typeof(x)
       end

foo()

# What about function signatures?
function bar(x ::Float64) ::Float32
    sin(2π * x)
end
bar(25.00)

# Function arguments: act like typeasserts
bar(1)

# You can add the Int64 type to an existing bar() function.  You don't have to declare all the types for a function right away.
function bar(x ::Int64) ::Float32
    sin(2π * x)
end

bar(1)

#Function return types
function sqrt_or_nothing(x ::Float64) ::Union{Float64, Nothing}
    x < 0.0 ? nothing : √x
end

@show sqrt_or_nothing(2.0)
@show sqrt_or_nothing(-2.0)

    function bar_clipped(x ::Float64)
        x < 0.0 ? 0 : sin(2π * x)
    end

typeof(bar_clipped(0.75))
typeof(bar_clipped(-0.75))
