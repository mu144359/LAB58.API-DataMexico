# Hecho con gusto por Selene Muñoz Ortega (UAEH)

# LABORATORIO 58 - API Data Mexico 

# instalar librerías
install.packages("jsonlite")

# cargar librerías
library(jsonlite)

# cargar base de datos
choose.files()
data_api2 <- fromJSON("C:\\Users\\munoz\\Downloads\\Municipality-Year-records.json")

# ver el tipo de datos y los nombres de las columnas
class(data_api2)
names(data_api2)

# extraer solo datos (data frame)
df1 <- data_api2[["data"]]
class(df1)
head (df1)

# exportar la base formato csv
write.csv(df1, file = "Gini_Coneval.csv", row.names = FALSE)

