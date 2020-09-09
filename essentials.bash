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
    libxml2-dev \
    libcurl4-openssl-dev \
    git \
    ffmpeg \
    openjdk-11-jdk 
    openjdk-11-jre 
    libcurl4-gnutls-dev
    multiarch-support \
    psmisc \
    procps \
    python-setuptools \
    sudo \
    wget \

apt -y autoremove
#apt-get upgrade

## add missing R-packages in the DESCRIPTION file under imports. Github or other remotes go in the Remotes field:
Rscript -e "options(repos = c(CRAN = 'https://cran.r-project.org')); install.packages(c('devtools'))"
Rscript -e "devtools::install('.')"
