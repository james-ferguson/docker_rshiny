FROM rbase:3.4.0 

MAINTAINER Andreas Mueller "andreas@kwiqly.com" 
RUN apt-get update && apt-get install -y \
    pandoc \
    pandoc-citeproc \
    texlive  \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev\
    libxml2-dev \
    texlive-formats-extra

RUN R -e  'install.packages("devtools")
library(devtools)
devtools::install_github("rstats-db/DBI", ref = '8afe845')
devtools::install_github("RcppCore/Rcpp", ref = '4e0f79c')
devtools::install_github("rstudio/pool", ref = '54bd256')
devtools::install_github("rstudio/DT", ref = '34b4603')
devtools::install_github("rstats-db/RPostgres", version = "0.1-4")
mirror = "https://stat.ethz.ch/CRAN/" 
install_version("assertthat", version = "0.2.0", repos = mirror)
install_version("Cairo", version = "1.5-9", repos = mirror)
install_version("cobs", version = "1.3-3", repos = mirror)
install_version("colorspace", version = "1.3-2", repos = mirror)
install_version("colourpicker", version = "0.3", repos = mirror)
install_version("crosstalk", version = "1.0.0", repos = mirror)
install_version("curl", version = "2.6", repos = mirror)
install_version("digest", version = "0.6.12", repos = mirror)
install_version("dplyr", version = "0.5.0", repos = mirror)
install_version("feather", version = "0.3.1", repos = mirror)
install_version("ggplot2", version = "2.2.1", repos = mirror)
install_version("ggthemes", version = "3.4.0", repos = mirror)
install_version("git2r", version = "0.18.0", repos = mirror)
install_version("gtable", version = "0.2.0", repos = mirror)
install_version("htmltools", version = "0.3.6", repos = mirror)
install_version("htmlwidgets", version = "0.8", repos = mirror)
install_version("httpuv", version = "1.3.3", repos = mirror)
install_version("httr", version = "1.2.1", repos = mirror)
install_version("jsonlite", version = "1.4", repos = mirror)
install_version("knitr", version = "1.15.1", repos = mirror)
install_version("lattice", version = "0.20-35", repos = mirror)
install_version("lazyeval", version = "0.2.0", repos = mirror)
install_version("leaflet", version = "1.1.0", repos = mirror)
install_version("magrittr", version = "1.5", repos = mirror)
install_version("Matrix", version = "1.2-10", repos = mirror)
install_version("MatrixModels", version = "0.4-1", repos = mirror)
install_version("memoise", version = "1.1.0", repos = mirror)
install_version("mime", version = "0.5", repos = mirror)
install_version("miniUI", version = "0.1.1", repos = mirror)
install_version("munsell", version = "0.4.3", repos = mirror)
install_version("plyr", version = "1.8.4", repos = mirror)
install_version("quantreg", version = "5.33", repos = mirror)
install_version("R6", version = "2.2.1", repos = mirror)
install_version("rlang", version = "0.1", repos = mirror)
install_version("rmarkdown", version = "1.5", repos = mirror)
install_version("RPostgreSQL", version = "0.4", repos = mirror)
install_version("scales", version = "0.4.1", repos = mirror)
install_version("shiny", version = "1.0.3", repos = mirror)
install_version("shinyBS", version = "0.61", repos = mirror)
install_version("shinydashboard", version = "0.5.3", repos = mirror)
install_version("shinyjs", version = "0.9", repos = mirror)
install_version("shinythemes", version = "1.1.1", repos = mirror)
install_version("SparseM", version = "1.77", repos = mirror)
install_version("svglite", version = "1.2.0", repos = mirror)
install_version("tibble", version = "1.3.1", repos = mirror)
install_version("tidyr", version = "0.6.3", repos = mirror)
install_version("withr", version = "1.0.2", repos = mirror)
install_version("xtable", version = "1.8-2", repos = mirror)
install_version("yaml", version = "2.1.14", repos = mirror)install.packages("devtools") 
'
EXPOSE 3838
WORKDIR /srv/shiny-server
