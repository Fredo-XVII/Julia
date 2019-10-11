# Get Data with ODBC

# Load ODBC package
using ODBC, Query, DataFrames, Statistics

db_br = ODBC.DSN("bigRED64", "Z001C9V", "EDABI(2019")
