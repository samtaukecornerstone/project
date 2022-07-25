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



