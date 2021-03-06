# Hecho con gusto por Selene Mu�oz Ortega (UAEH)

# LABORATORIO 58 - API Data Mexico 

# instalar librer�as
install.packages("jsonlite")

# cargar librer�as
library(jsonlite)

# cargar base de datos
choose.files()
datos_api2 <- fromJSON("C:\\Users\\munoz\\Dropbox\\Selene\\Doctorado\\4to semestre\\Unidad 2\\Lab58\\LAB58.API-DataMexico\\Municipality-Year-records.json")

# ver el tipo de datos y los nombres de las columnas
class(datos_api2)
names(datos_api2)

# ver la data
View(datos_api2[["data"]])


# transformar a data frame
final_API <- as.data.frame((datos_api2[["data"]]))
class(final_API)


# exportar la base formato csv
write.csv(final_API, file = "final_API.CSV")
