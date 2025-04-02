FROM rocker/r-ver:4.3.1

# System dependencies
RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    libsodium-dev \
    libssl-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app

# Copy renv files
COPY renv.lock ./renv.lock
COPY renv/ .renv/

RUN Rscript -e 'install.packages("renv"); renv::restore()'

EXPOSE 8000
