FROM r-base:3.4.0 

MAINTAINER Andreas Mueller "andreas@kwiqly.com" 
RUN apt-get update -y && apt-get install -y \
    libssl-dev libcurl4-gnutls-dev  r-cran-rpostgresql libpq-dev \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev\
    libxml2-dev 

RUN R -e  ' install.packages("devtools");\
library(devtools);\
devtools::install_github("rstudio/pool", ref = "3073b629");\
devtools::install_github("rstudio/DT", ref = "34b4603");\
devtools::install_github("rstats-db/RPostgres", version = "0.1-4");\
devtools::install_github("rstudio/ggvis", build_vignettes = FALSE);\
mirror = "https://stat.ethz.ch/CRAN/" ;\
install_version("assertthat", version = "0.2.0", repos = mirror);\
install_version("Cairo", version = "1.5-9", repos = mirror);\
install_version("cobs", version = "1.3-3", repos = mirror);\
install_version("colorspace", version = "1.3-2", repos = mirror);\
install_version("colourpicker", version = "0.3", repos = mirror);\
install_version("crosstalk", version = "1.0.0", repos = mirror);\
install_version("curl", version = "2.6", repos = mirror);\
install_version("digest", version = "0.6.12", repos = mirror);\
install_version("DBI", version = "0.7", repos = mirror);\
install_version("feather", version = "0.3.1", repos = mirror);\
install_version("ggthemes", version = "3.4.0", repos = mirror);\
install_version("ggvis", version = "0.4.3", repos = mirror);\ 
install_version("git2r", version = "0.18.0", repos = mirror);\
install_version("gtable", version = "0.2.0", repos = mirror);\
install_version("htmltools", version = "0.3.6", repos = mirror);\
install_version("htmlwidgets", version = "0.8", repos = mirror);\
install_version("httpuv", version = "1.3.5", repos = mirror);\
install_version("httr", version = "1.2.1", repos = mirror);\
install_version("jsonlite", version = "1.4", repos = mirror);\
install_version("knitr", version = "1.15.1", repos = mirror);\
install_version("later", version = "0.3", repos = mirror);\
install_version("lattice", version = "0.20-35", repos = mirror);\
install_version("lazyeval", version = "0.2.0", repos = mirror);\
install_version("leaflet", version = "1.1.0", repos = mirror);\
install_version("Matrix", version = "1.2-10", repos = mirror);\
install_version("MatrixModels", version = "0.4-1", repos = mirror);\
install_version("NbClust", version = "3.0", repos = mirror);\
install_version("memoise", version = "1.1.0", repos = mirror);\
install_version("mime", version = "0.5", repos = mirror);\
install_version("miniUI", version = "0.1.1", repos = mirror);\
install_version("munsell", version = "0.4.3", repos = mirror);\
install_version("rlang", version = "0.1.2", repos = mirror);\
install_version("pool", version = "0.1.1", repos = mirror);\ 
install_version("quantreg", version = "5.33", repos = mirror);\
install_version("Rcpp", version = "0.12.12", repos = mirror);\
install_version("R6", version = "2.2.2", repos = mirror);\
install_version("rmarkdown", version = "1.5", repos = mirror);\
install_version("RPostgreSQL", version = "0.6-2", repos = mirror);\ 
install_version("scales", version = "0.4.1", repos = mirror);\
install_version("shiny", version = "1.0.5", repos = mirror);\
install_version("shinyAce", version = "0.2.1", repos = mirror);\
install_version("shinyBS", version = "0.61", repos = mirror);\
install_version("shinydashboard", version = "0.6.1", repos = mirror);\
install_version("shinyjs", version = "0.9", repos = mirror);\
install_version("shinythemes", version = "1.1.1", repos = mirror);\
install_version("SparseM", version = "1.77", repos = mirror);\
install_version("svglite", version = "1.2.0", repos = mirror);\
install_version("tibble", version = "1.3.1", repos = mirror);\
install_version("tidyverse", version = "1.1.1", repos = mirror);\
install_version("timevis", version = "0.4", repos = mirror);\
install_version("withr", version = "1.0.2", repos = mirror);\
install_version("xtable", version = "1.8-2", repos = mirror);\
install_version("yaml", version = "2.1.14", repos = mirror);\
install_version("akima", version ="0.6-2", repos = mirror);\ 
install_version("crosstalk", version ="1.0.0", repos = mirror);\ 
install_version("mgcv", version ="1.8-22", repos = mirror);\ 
install_version("plotly", version ="4.7.1", repos = mirror);\
install_version("visNetwork", version ="2.0.1", repos = mirror);'
