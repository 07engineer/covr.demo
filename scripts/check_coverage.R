library(covr)
cov <- package_coverage()
cov
report(cov)
as.data.frame(cov)
print(cov, group = "function")

# Don't need to have a package or
# test files to use covr tools.

# Can create a file of functions, and a file
#which runs these functions, and use
# cov <- file_coverage(file1, file2)


cov <- file_coverage("R/hello.R", "scripts/run_functions.R")

cov <- package_coverage(type = "example")
print(cov, group = "function")
