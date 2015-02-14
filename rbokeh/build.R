library(rmarkdown)
library(packagedocs)

render("index.Rmd", output_format = package_docs(lib_dir = "assets"))

# a <- function_ref_template("rbokeh", "~/Documents/Code/rbokeh", exclude = c("pipe", "scales"))
# cat(a, file = pipe("pbcopy"))

render("rd.Rmd", output_format = package_docs(lib_dir = "assets"))

