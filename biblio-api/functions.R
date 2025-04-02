# Function to fetch libraries from SQLite
fetch_libraries <- function() {
  con <- dbConnect(SQLite(), here("libraries.sqlite"))
  on.exit(dbDisconnect(con))
  dbReadTable(con, "libraries")
}

# Function to fetch schedules from SQLite
fetch_schedules <- function() {
  con <- dbConnect(SQLite(), here("libraries.sqlite"))
  on.exit(dbDisconnect(con))
  dbReadTable(con, "schedules")
}
