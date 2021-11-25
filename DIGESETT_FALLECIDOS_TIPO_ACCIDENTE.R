library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett_clean",
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

str(fallecimientos_tipo)

fallecimientos_tipo$FALLECIMIENTOS_TOTALES <- as.numeric(fallecimientos_tipo$FALLECIMIENTOS_TOTALES)
fallecimientos_tipo$TIPO_ACCIDENTE <- factor(fallecimientos_tipo$TIPO_ACCIDENTE)
fallecimientos_tipo$X2016 <- as.numeric(fallecimientos_tipo$X2016)
fallecimientos_tipo$X2017 <- as.numeric(fallecimientos_tipo$X2017)
fallecimientos_tipo$X2018 <- as.numeric(fallecimientos_tipo$X2018)
fallecimientos_tipo$X2019 <- as.numeric(fallecimientos_tipo$X2019)
fallecimientos_tipo$X2020 <- as.numeric(fallecimientos_tipo$X2020)
fallecimientos_tipo$X2021 <- as.numeric(fallecimientos_tipo$X2021)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

tipo_accidente <- fallecimientos_tipo$FALLECIMIENTOS_TOTALES

summary(fallecimientos_tipo)

EDA(tipo_accidente)

##############TRANSFORM######################
library(dplyr)

str(fallecimientos_tipo)

unique(fallecimientos_tipo$TIPO_ACCIDENTE)


fallecimientos_tipo$TIPO_ACCIDENTE <- factor(fallecimientos_tipo$TIPO_ACCIDENTE)

##############Graphics#####################
library(ggplot2)

ggplot(fallecimientos_tipo, aes(x=TIPO_ACCIDENTE , y=X2016)) +
  geom_bar(stat = 'identity', fill=rgb(1,0.5,1,0.9))

ggplot(fallecimientos_tipo, aes(x=TIPO_ACCIDENTE , y=X2020)) +
  geom_bar(stat = 'identity', fill=rgb(1,0.5,1,0.9))
