FROM rocker/r-ver:4.3.1

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    libsodium-dev \
    libssl-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e 'install.packages("renv"); renv::restore()'

WORKDIR /app
COPY . /app

EXPOSE 8000
