library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_genero")

data = fetch(query, n=-1)

fallecimientos_genero <- data

fallecimientos_genero <- data.frame(lapply(fallecimientos_genero, function(x) {gsub("Ã³", "ó", x)}))
colnames(fallecimientos_genero)[1] <- "genero"
colnames(fallecimientos_genero)[3] <- "AÑO"

fallecimientos_genero$año <- as.numeric(fallecimientos_genero$año)
fallecimientos_genero$FALLECIDOS <- as.numeric(fallecimientos_genero$FALLECIDOS)

class(fallecimientos_genero$año)
class(fallecimientos_genero$FALLECIDOS)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

fallecidos_genero <- fallecimientos_genero$FALLECIDOS

summary(fallecimientos_genero)

EDA(fallecidos_genero)

###############Transform################
str(fallecimientos_genero)

fallecimientos_genero$genero <- factor(fallecimientos_genero$genero)
