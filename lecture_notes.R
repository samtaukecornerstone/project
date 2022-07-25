usethis::edit_r_profile()

# List out files in R location
list.files(R.home())

# Find where R is going to look for libraries
.libPaths()


# How to create a package
usethis::create_package('./project/ussie/')
