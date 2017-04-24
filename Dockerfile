FROM asmuelle/rbase:3.2.2 

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

RUN R -e "install.packages(c('leaflet','rmarkdown','git2r','DT', 'Cairo','colourpicker','shinyBS','shinydashboard','shinyjs','shinythemes','svglite','htmltools','base64enc','ggplot2','ggthemes'),repos='https://cran.rstudio.com/')"

EXPOSE 3838
WORKDIR /srv/shiny-server
CMD ["/usr/bin/Rscript", "start.R"]
