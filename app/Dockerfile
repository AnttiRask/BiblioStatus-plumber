# Use a base Shiny image
FROM rocker/shiny:4.3.1

# Install system libraries
RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

# Install R packages
RUN R -e "install.packages(c('shiny', 'shinyjs', 'leaflet', 'dplyr', 'RSQLite', 'here', 'purrr'), repos='https://cloud.r-project.org')"

# Copy app files
COPY . /srv/shiny-server/

# Expose port (Shiny listens on 3838)
EXPOSE 3838

CMD ["/usr/bin/shiny-server"]
