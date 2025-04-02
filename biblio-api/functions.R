# Function to fetch libraries from SQLite
fetch_libraries <- function() {
  con <- dbConnect(SQLite(), here("libraries.sqlite"))
  # con <- dbConnect(SQLite(), here("biblio-api/libraries.sqlite")) # Uncomment for the local version
  on.exit(dbDisconnect(con))
  dbReadTable(con, "libraries")
}

# Function to fetch schedules from SQLite
fetch_schedules <- function() {
  con <- dbConnect(SQLite(), here("libraries.sqlite"))
  # con <- dbConnect(SQLite(), here("biblio-api/libraries.sqlite")) # Uncomment for the local version
  on.exit(dbDisconnect(con))
  dbReadTable(con, "schedules")
}
