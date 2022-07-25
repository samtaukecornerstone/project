usethis::edit_r_profile()

# List out files in R location
list.files(R.home())

# Find where R is going to look for libraries
.libPaths()


# How to create a package
usethis::create_package('./project/ussie/')



# Create git repo and set it up -------------------------------------------
 # Navigate to place on R where it is stored and run the following
# Create a token
usethis::create_github_token()
# Link token to local git
gitcreds::gitcreds_set()
# Create repo
usethis::use_github()



# Make sure you are ignoring your personal credential stuff
usethis::git_vaccinate()


# Add an R fle
usethis::use_r("file_name")

# Load all changes in your package
# Do this after you have tinkered with a function reload the functions
# shortcut: ctrl+shift+l
devtools::load_all()




# Check to make sure everything in the package is good --------------------
devtools::check()



# Add licensing -----------------------------------------------------------


usethis::use_mit_license("Sam Tauke")

# Add rogyen skeleton
code -> insert roxygen skeleton

# then Convert Roxygen comments to rd
devtools::document()


# Make package level documentation

usethis::use_package_doc()





# Package Dependencies ----------------------------------------------------

# Add dplyr as a dependency in the DESCRIPTION file, still need to use :: notation
usethis::use_package("dplyr")

# Add package to the description file, add @importFrom to the projects-package.R and add to the NAMESPACE
# Allows us to use tibble::tibble without the :: notation
usethis::use_import_from("tibble","tibble")


# Citation Files ----------------------------------------------------------

# Add a citation cff file to your package

cffr::cff_write()



# Testing the Package -----------------------------------------------------

# First time setting up the environment
usethis::use_testthat(3)


# To make interactive testthat session:
library(testthat)
local_edition(3)


# Initiate a test
usethis::use_test("matches.R")

# Run a specific test
testthat::test_file('tests/testthat/test-matches.R')

# To run all tests
test()

# Tests are run automatically by devtools::check()



# Test Coverage -----------------------------------------------------------

#coverage on the active file:
devtools::test_coverage_active_file()

#coverage on the whole package:
devtools::test_coverage()


