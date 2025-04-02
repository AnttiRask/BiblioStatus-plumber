# Load required libraries
library(dplyr)
library(here)
library(plumber)
library(RSQLite)

# Load helper functions from your existing script
source(here("functions.R"))

# Uncomment for the local version
# source(here("biblio-api/functions.R"))

#* Health check
#* @get /ping
function() {
  list(status = "ok", message = "API is running")
}

#* Get all libraries
#* @get /libraries
function() {
  libraries <- fetch_libraries()
  return(libraries)
}

#* Get schedules
#* @get /schedules
function() {
  schedules <- fetch_schedules()
  return(schedules)
}
