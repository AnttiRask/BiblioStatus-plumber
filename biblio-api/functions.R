# Function to fetch libraries from SQLite
fetch_libraries <- function() {
  res <- GET("https://biblio-api.fly.dev/libraries")
  fromJSON(content(res, "text", encoding = "UTF-8"))
}

# Function to fetch schedules from SQLite and determine the current open status
fetch_schedules <- function() {
  res <- GET("https://biblio-api.fly.dev/schedules")
  fromJSON(content(res, "text", encoding = "UTF-8"))
}
