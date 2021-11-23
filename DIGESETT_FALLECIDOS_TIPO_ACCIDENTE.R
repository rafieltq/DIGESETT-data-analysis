library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_tipo")

data = fetch(query, n=-1)

fallecimientos_tipo <- data

fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Ã", "í", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("í³", "ó", x)}))
colnames(fallecimientos_tipo)[1] <- "TIPO_ACCIDENTE"
colnames(fallecimientos_tipo)[3] <- "AÑO"

fallecimientos_tipo$AÑO <- as.numeric(fallecimientos_tipo$AÑO)
fallecimientos_tipo$FALLECIDOS <- as.numeric(fallecimientos_tipo$FALLECIDOS)

class(fallecimientos_tipo$AÑO)
class(fallecimientos_tipo$FALLECIDOS)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

tipo_accidente <- fallecimientos_tipo$FALLECIDOS

summary(fallecimientos_tipo)

EDA(tipo_accidente)

##############TRANSFORM######################
str(fallecimientos_tipo)

fallecimientos_tipo$TIPO_ACCIDENTE <- factor(fallecimientos_tipo$TIPO_ACCIDENTE)
