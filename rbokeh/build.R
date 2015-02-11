library(rmarkdown)
library(packagedocs)

render("index.Rmd", output_format = package_docs(lib_dir = "assets"))
render("rd.Rmd", output_format = package_docs(lib_dir = "assets"))

