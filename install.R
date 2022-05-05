install.packages(c(
    "devtools",
    "mvtnorm",     # **
    "tmvtnorm",    # **
    "impute",      # **
    "pcaMethods",  # **
    "imputeLCMD",  # **
    "plotly",
    "DT",
    "BiocManager",
    "testthat",
    "RColorBrewer",
    "shiny",
    "shinyalert",
    "shinydashboard",
    "shinyjs",
    "svglite"
  ),
  dependencies=TRUE,
  repos="http://cran.rstudio.com/"
)

# ** = not available for R3.4.3
