install.packages("PASWR")

library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_dia")

data = fetch(query, n=-1)

fallecimientos_dia <- data

fallecimientos_dia <- data.frame(lapply(fallecimientos_dia, function(x) {gsub("Ã©", "é", x)}))
fallecimientos_dia <- data.frame(lapply(fallecimientos_dia, function(x) {gsub("Ã¡", "á", x)}))
colnames(fallecimientos_dia)[1] <- "dia_semana"
colnames(fallecimientos_dia)[3] <- "AÑO"

fallecimientos_dia$FALLECIDOS <- as.numeric(fallecimientos_dia$FALLECIDOS)

class(fallecimientos_dia$FALLECIDOS)


fallecimientos_dia$AÑO <- as.numeric(fallecimientos_dia$AÑO)

class(fallecimientos_dia$AÑO)

dbDisconnect(mydb)

#############################Explore###########################
library(PASWR)

fallecidos_dia <- fallecimientos_dia$FALLECIDOS

summary(fallecimientos_dia)

EDA(fallecidos_dia)

###########################Transform########################
str(fallecimientos_dia)

fallecimientos_dia$dia_semana <- factor(fallecimientos_dia$dia_semana)


