FROM rocker/shiny-verse:3.6.0

ADD requirements.R requirements.R

RUN Rscript requirements.R