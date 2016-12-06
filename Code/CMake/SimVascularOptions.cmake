# Initial SV Options 
#-----------------------------------------------------------------------------
# Developer flag (Output extra info during configure)
option(SV_DEVELOPER_OUTPUT "This is a developer mode to print extra messages during configure" OFF)

set(SV_BUILD_TYPE "CMAKE" CACHE STRING "Designate CMAKE build" FORCE)
set_property(CACHE SV_BUILD_TYPE PROPERTY STRINGS CMAKE)
mark_as_advanced(SV_BUILD_TYPE)

#-----------------------------------------------------------------------------
# Distribution
option(SV_ENABLE_DISTRIBUTION "Distribute" OFF)

#-----------------------------------------------------------------------------
# Enable Testing
option(BUILD_TESTING "Build ${PROJECT_NAME} testing" OFF)

#-----------------------------------------------------------------------------
# Libs - SHARED or STATIC
option(BUILD_SHARED_LIBS "Build ${PROJECT_NAME} as shared libraries." OFF)

set(SV_LIBRARY_TYPE "STATIC" CACHE STRING "Options are STATIC or SHARED" FORCE)
set_property(CACHE SV_LIBRARY_TYPE PROPERTY STRINGS STATIC SHARED)

#-----------------------------------------------------------------------------
# SimVascular Build options
option(SV_SUPPRESS_WARNINGS "Option to suppress all compiler warnings while compiling" ON)

#-----------------------------------------------------------------------------
# General Options
option(svSolver_USE_MPI "Use MSMPI" ON)
option(svSolver_USE_DUMMY_MPI "Use Dummy MPI" OFF)
option(SV_USE_MSMPI "Use MSMPI" OFF)

#-----------------------------------------------------------------------------
# ThirdParty
option(SV_USE_ZLIB "Use ZLib" ON)

#-----------------------------------------------------------------------------
# Remaining optional dependencies
#-----------------------------------------------------------------------------
# Enable Intel Runtime libs if we need or want them
option(svSolver_USE_INTEL "Add Intel Runtime Libraries (these may be needed by some libraries)" OFF)

#-----------------------------------------------------------------------------
# All OS
option(SV_USE_NOTIMER "Use notimer" ON)

#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------
# Solver Build Options (Modules)
#option(SV_USE_THREEDSOLVER "Option to build 3D-solver module (requires Fortran)" ON)
option(SV_THREEDSOLVER_USE_SOLVERIO "Option to build solverIO module (requires Fortran)" ON)
option(SV_THREEDSOLVER_USE_SVPRE "Option to build Pre-solver module (requires Fortran)" ON)
option(SV_THREEDSOLVER_USE_SVPOST "Option to build post-solver module" ON)
option(SV_THREEDSOLVER_SOLVERIO_REDIRECT "Option to redirect solver IO" OFF)
option(SV_THREEDSOLVER_USE_CORONARY "" ON)
option(SV_THREEDSOLVER_USE_CLOSEDLOOP "" ON)
option(SV_THREEDSOLVER_USE_VARWALL "" ON)
option(SV_THREEDSOLVER_USE_VTK "" ON)
option(SV_USE_SPARSE "Use sparse Library" ON)
option(SV_USE_METIS "Use metis Library" ON)
option(SV_USE_NSPCG "Use nspcg Library" ON)

#-----------------------------------------------------------------------------
# Linear Solver Options: SVLS
option(SV_THREEDSOLVER_USE_SVLS "Use svLS as linear solver" ON )
if(SV_THREEDSOLVER_USE_SVLS)
  set(USE_SVLS 1)
endif()
set(SVLS_BUILD_TYPE "Source")

option(SV_THREEDSOLVER_USE_LESLIB "Use leslib as linear solver" OFF )
if(SV_THREEDSOLVER_USE_LESLIB)
  set(SV_USE_LESLIB 1)
endif()
