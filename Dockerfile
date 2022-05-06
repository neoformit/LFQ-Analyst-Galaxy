# FROM rocker/shiny:3.4.3
# FROM rocker/shiny-verse:3.5.2
FROM rocker/shiny-verse:3.6.0
COPY . /srv/shiny-server/lfq-analyst

RUN apt-get update && apt-get install -y \
  libnetcdf-dev   \
  libcairo2-dev   \
  libudunits2-dev \
  libharfbuzz-dev \
  libfribidi-dev  \
  libgeos-dev     \
  libgdal-dev     \
  libtiff5-dev

ENV PASSWORD=secret

RUN pkg-config --cflags cairo && export PKG_CONFIG_PATH=/usr/local/opt/libffi/lib/pkgconfig
RUN Rscript /srv/shiny-server/lfq-analyst/install.R

CMD R -e "library(shiny); runApp('/srv/shiny-server/lfq-analyst', port=3838, host='0.0.0.0')"
