library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett_clean",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_genero")

data = fetch(query, n=-1)

fallecimientos_genero <- data

fallecimientos_genero <- data.frame(lapply(fallecimientos_genero, function(x) {gsub("Ã³", "ó", x)}))
colnames(fallecimientos_genero)[1] <- "genero"
colnames(fallecimientos_genero)[3] <- "AÑO"

fallecimientos_genero$genero <- factor(fallecimientos_genero$genero)
fallecimientos_genero$Fallecimientos_totales <- as.numeric(fallecimientos_genero$Fallecimientos_totales)
fallecimientos_genero$`2016` <- as.numeric(fallecimientos_genero$`2016`)
fallecimientos_genero$`2017` <- as.numeric(fallecimientos_genero$`2017`)
fallecimientos_genero$`2018` <- as.numeric(fallecimientos_genero$`2018`)
fallecimientos_genero$`2019` <- as.numeric(fallecimientos_genero$`2019`)
fallecimientos_genero$`2020` <- as.numeric(fallecimientos_genero$`2020`)
fallecimientos_genero$`2021` <- as.numeric(fallecimientos_genero$`2021`)

fallecimientos_genero <- fallecimientos_genero[c(-9)]

class(fallecimientos_genero$año)
class(fallecimientos_genero$FALLECIDOS)

fallecimientos_genero$genero <- factor(fallecimientos_genero$genero)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

fallecidos_genero <- fallecimientos_genero$FALLECIDOS

summary(fallecimientos_genero)

EDA(fallecidos_genero)

###############Transform################
str(fallecimientos_genero)

unique(fallecimientos_genero$genero)
fallecimientos_genero <- data.frame(lapply(fallecimientos_genero, function(x) {gsub(" ", "", x)}))
fallecimientos_genero <- data.frame(lapply(fallecimientos_genero, function(x) {gsub("SinEspecificación", "Sin Especificación", x)}))

fallecimientos_genero$genero <- factor(fallecimientos_genero$genero)

######################Graphics#############
library(dplyr)

ggplot(fallecimientos_genero, aes(x=genero , y=`2016`)) +
  geom_bar(stat = 'identity') +
  geom_point() +
  ggtitle ("Total de fallecimientos por genero 2016")

ggplot(fallecimientos_genero, aes(x=genero , y=`2020`)) +
  geom_bar(stat = 'identity') +
  geom_point() +
  ggtitle ("Total de fallecimientos por genero 2020")
