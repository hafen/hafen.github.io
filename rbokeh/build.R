library(rbokeh)
library(rmarkdown)
library(packagedocs)

render("index.Rmd", output_format = package_docs(lib_dir = "assets"))

tmp <- readLines("index.html")
which(grepl("Error", tmp))
which(grepl("Warning", tmp))

a <- function_ref_template("rbokeh", "~/Documents/Code/rbokeh", exclude = c("pipe", "scales"))
cat(a, file = pipe("pbcopy"))

render("rd.Rmd", output_format = package_docs(lib_dir = "assets"))

