
library(DatabaseConnector)
library(SqlRender)

library(N3cOhdsi)

con_details <- DatabaseConnector::createConnectionDetails(dbms = "sql server",
                                             user = "",
                                             password = "",
                                             server = "",
                                             )

cdmDatabaseSchema <- "" #
resultsDatabaseSchema <- "" # schema with write privileges
vocabularyDatabaseSchema <- ""
targetCohortTable <- "cohort"
targetCohortId <- 999
outputFolder <-  paste0(getwd(), "/output/")

N3cOhdsi::createCohort(connectionDetails = con_details,
                        cdmDatabaseSchema = cdmDatabaseSchema,
                        resultsDatabaseSchema = resultsDatabaseSchema,
                        vocabularyDatabaseSchema = cdmDatabaseSchema,
                        targetCohortTable = targetCohortTable,
                        targetCohortId = targetCohortId
                        )


N3cOhdsi::runExtraction(connectionDetails = con_details,
                        cdmDatabaseSchema = cdmDatabaseSchema,
                        resultsDatabaseSchema = resultsDatabaseSchema,
                        outputFolder = outputFolder
                        )


