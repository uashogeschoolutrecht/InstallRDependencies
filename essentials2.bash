## add missing UBUNTU depends here
apt-get update \
  && apt-get install -y --no-install-recommends \
    file \
    git \
    libapparmor1 \
    libclang-dev \
    libcurl4-openssl-dev \
    libedit2 \
    libssl-dev \
    lsb-release \
    multiarch-support \
    psmisc \
    procps \
    python-setuptools \
    sudo \
    wget \

## add missing R-packages in the DESCRIPTION file under imports. Github or other remotes go in the Remotes field:
Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); install.packages(c('devtools'))"
Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); install.packages(c('remotes', 'BiocManager'))"
Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); devtools::install('.', dependencies=TRUE, build_vignettes=FALSE, repos = BiocManager::repositories())"
