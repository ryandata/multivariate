# A Short Course in Multivariate Statistical Methods with R
# Олон хэмжээст статистикийн богино хэмжээний сургалт R программ дээр
# Ryan Womack, Rutgers University
# rwomack@rutgers.edu

# delivered at Mongolian University of Life Sciences
# Хөдөө аж ахуйн их сургуульт дээр заасан
# 2018-02-26 thru 2018-03-02


# initial setup

# these packages are required to support PDF creation in Rstudio
markdownpackages <- c("evaluate", "digest", "highr", "markdown", "stringr", "Rcpp", "rmarkdown", "htmltools", "yaml", "caTools", "bitops", "knitr", "rprojroot", "jsonlite", "base64enc", "rmarkdown")
install.packages(markdownpackages, dependencies = TRUE)

# these packages are required for publishing a presentation

publishingpackages <- c("RJSONIO", "rsconnect", "PKI", "rstudioapi", "packrat")
install.packages(publishingpackages, dependencies=TRUE)