FROM rocker/r-ver:4.3.1

# System dependencies
RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    libsodium-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy app files
COPY . /app

# Copy renv files explicitly
COPY renv.lock ./renv.lock
COPY renv/ ./renv/

# Restore packages with renv
RUN Rscript -e "install.packages('renv'); renv::restore()"

# Expose port
EXPOSE 8000

# Run the API
# CMD ["R", "-e", "pr <- plumber::pr('plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
