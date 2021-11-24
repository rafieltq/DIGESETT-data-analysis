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

fallecimientos_genero$AÑO <- factor(fallecimientos_genero$AÑO)
fallecimientos_genero$FALLECIDOS <- as.numeric(fallecimientos_genero$FALLECIDOS)

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

f_gender_year <- fallecimientos_genero %>% filter(AÑO == '2017')

ggplot(f_gender_year, aes(x=genero , y=FALLECIDOS)) +
  geom_bar(stat = 'identity')
