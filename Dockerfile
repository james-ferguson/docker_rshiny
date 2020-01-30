FROM r-base:latest

MAINTAINER Andreas Mueller "andreas@kwiqly.com" 
RUN apt-get update -y && apt-get install -y curl\
    libssl-dev libcurl4-gnutls-dev  r-cran-rpostgresql libpq-dev \
    libcurl4-gnutls-dev \
    libcairo2-dev/unstable \
    libxt-dev\
    libsodium-dev\
    libxml2-dev\
    nodejs npm

RUN mkdir -p /var/opt/kwiqly
RUN npm install -g orca
RUN R -e  ' install.packages("devtools");\
library(devtools);\
devtools::install_github("ropensci/plotly");\
install_version("safer");\
install_version("curl");\
install_version("shiny");\
install_version("shinyjs");\
install_version("shinythemes", upgrade="never");\
install_version("feather");\
install_version("fANCOVA");\
install_version("shinyhelper");\
install_version("NbClust");\
install_version("plotly");\
install_version("curl");\
install_version("jsonlite");\
install_version("DT");\
install_version("dbplyr");\
install_version("haven");\
install_version("knitr");\
install_version("tidyverse");\
install_version("magrittr");'
