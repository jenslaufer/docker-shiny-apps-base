update.packages(lib.loc="/usr/local/lib/R/site-library", ask=FALSE, checkBuilt=TRUE, repos = "https://cloud.r-project.org")

list.of.packages <- c('devtools', 'glue', 'DT', 'ggthemes', 'scales', 'logging', 'mongolite')
new.packages <-
  list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])]
if (length(new.packages))
  install.packages(new.packages)

devtools::install_github('bbc/bbplot')