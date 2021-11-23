library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_hora")

data = fetch(query, n=-1)

fallecimientos_hora <- data

fallecimientos_hora <- data.frame(lapply(fallecimientos_hora, function(x) {gsub("Ã‘", "Ñ", x)}))
colnames(fallecimientos_hora)[1] <- "INTERVALOS_HORAS"
colnames(fallecimientos_hora)[3] <- "AÑO"

fallecimientos_hora$AÑO <- as.numeric(fallecimientos_hora$AÑO)
fallecimientos_hora$FALLECIDOS <- as.numeric(fallecimientos_hora$FALLECIDOS)

class(fallecimientos_hora$AÑO)
class(fallecimientos_hora$FALLECIDOS)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

fallecidos_hora <- fallecimientos_hora$FALLECIDOS

summary(fallecimientos_hora)

EDA(fallecidos_hora)

###############Transform######################

str(fallecimientos_hora)


fallecimientos_hora$INTERVALOS_HORAS <- factor(fallecimientos_hora$INTERVALOS_HORAS)
