Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); install.packages(c('devtools', 'remotes', 'BiocManager'))"
Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=FALSE, repos = BiocManager::repositories())"
