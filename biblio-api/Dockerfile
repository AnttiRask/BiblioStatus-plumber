FROM rocker/r-ver:4.3.1

RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    libsodium-dev \
    libssl-dev \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('remotes'))"
RUN R -e "install.packages(c('dplyr', 'here', 'plumber', 'RSQLite'), repos='https://cloud.r-project.org')"

COPY . /app
WORKDIR /app

EXPOSE 8000
