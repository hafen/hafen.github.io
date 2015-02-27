library(rbokeh)
library(rmarkdown)
library(packagedocs)
code_path <- "~/Documents/Code/rbokeh"

render("index.Rmd", output_format = package_docs(lib_dir = "assets"))
check_output("index.html")
system("open index.html")

render_rd("rd_skeleton.Rmd", "rbokeh", code_path, exclude = c("pipe", "scales", "rbokeh-package"))
check_output("rd.html")
system("open rd.html")

# a <- function_ref_template("rbokeh", code_path, exclude = c("pipe", "scales", "rbokeh-package"))
# cat(a, file = pipe("pbcopy"))
# render("rd.Rmd", output_format = package_docs(lib_dir = "assets"))
