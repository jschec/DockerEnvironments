library("DBI")
library("odbc")
sort(unique(odbcListDrivers()[[1]]))

#server db is name of db in docker-compose.yml
con <- dbConnect(
  odbc(),
  Driver = "ODBC Driver 17 for SQL Server",
  Server = "db",
  Database = "PatientDB",
  UID = "dbUser",
  PWD = "testPass1234",
  Port = 1433
)

# Prints out all tables in database
dbListTables(con)

# Pulls down whole table into data object
data <- dbReadTable(con, "patient_t")

result <- dbSendQuery(con, "SELECT * FROM patient_t")

# Retrieve the first 10 results
first_10 <- dbFetch(result, n = 10)
