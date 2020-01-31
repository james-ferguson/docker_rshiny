FROM r-base:3.6.2

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
install.packages("fANCOVA");\
install.packages("plotly");\
install.packages("curl");\
library(devtools);\
install_version("safer", version = "0.2.1");\
install_version("shiny", version = "1.4.0");\
install_version("shinyjs", version = "1.0");\
install_version("shinythemes", version = "1.1.2");\
install_version("feather", version = "0.3.5");\
install_version("shinyhelper", version = "0.3.2");\
install_version("NbClust", version = "3.0");\
install_version("jsonlite", version = "1.6");\
install_version("DT", version = "0.11");\
install_version("dbplyr", version = "1.4.2");\
install_version("haven", version = "2.2.0");\
install_version("knitr", version = "1.26");\
install_version("tidyverse", version = "1.3.0");\
install_version("magrittr", version = "1.5");'
