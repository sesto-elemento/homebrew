require 'requirement'

class FortranDependency < Requirement
  fatal true

  default_formula 'gcc'

  env { ENV.fortran }

  satisfy :build_env => false do
    which(ENV["FC"] || "gfortran")
  end
end
