library(JuliaCall)
julia <- JuliaCall::julia_setup(JULIA_HOME = Sys.getenv("JULIA_BIN"))

JuliaCall::julia_eval("sqrt(2)")

julia$eval("sqrt(2)")

julia$call("sqrt", 2)
julia_call("sqrt", 2)

julia_install_package("IJulia")
julia_installed_package()
julia_command("Pkg.installed()")
