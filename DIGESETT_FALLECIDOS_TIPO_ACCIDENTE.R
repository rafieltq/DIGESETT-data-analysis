library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_tipo")

data = fetch(query, n=-1)

fallecimientos_tipo <- data

fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("í³", "ó", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Ã", "í", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("í³", "ó", x)}))
colnames(fallecimientos_tipo)[1] <- "TIPO_ACCIDENTE"
colnames(fallecimientos_tipo)[3] <- "AÑO"

str(fallecimientos_tipo)

fallecimientos_tipo$AÑO <- factor(fallecimientos_tipo$AÑO)
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
library(dplyr)

str(fallecimientos_tipo)

.unique(fallecimientos_tipo$TIPO_ACCIDENTE)
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Aplastamiento", "Aplastamiento", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("os", "o", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Atropellamiento", "Atropello", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Colisión", "Colisiones", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("pp", "p", x)}))
fallecimientos_tipo <- data.frame(lapply(fallecimientos_tipo, function(x) {gsub("Volcaduras", "Volcadura", x)}))


fallecimientos_tipo$TIPO_ACCIDENTE <- factor(fallecimientos_tipo$TIPO_ACCIDENTE)

##############Graphics#####################
library(ggplot2)

f_type_year <- fallecimientos_tipo %>% filter(AÑO == '2021')

ggplot(f_type_year, aes(x=TIPO_ACCIDENTE , y=FALLECIDOS)) +
  geom_bar(stat = 'identity')
