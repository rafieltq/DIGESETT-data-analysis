install.packages("PASWR")
install.packages('tidyverse')
install.packages('dplyr')

library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett_clean",
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


fallecimientos_dia$FALLECIDOS <- as.numeric(fallecimientos_dia$Fallecimientos_totales)

class(fallecimientos_dia$FALLECIDOS)

fallecimientos_dia$dia_semana <- factor(fallecimientos_dia$dia_semana)

class(fallecimientos_dia$dia_semana)

fallecimientos_dia$AÑO <- factor(fallecimientos_dia$AÑO)

class(fallecimientos_dia$AÑO)

dbDisconnect(mydb)

#############################Explore###########################
library(PASWR)

fallecidos_dia <- fallecimientos_dia$FALLECIDOS

summary(fallecimientos_dia)

EDA(fallecidos_dia)

###########################Transform########################
str(fallecimientos_dia)

unique(fallecimientos_dia['dia_semana'])

fallecimientos_dia <- data.frame(lapply(fallecimientos_dia, function(x) {gsub("Jueves ", "Jueves", x)}))

fallecimientos_dia$dia_semana <- factor(fallecimientos_dia$dia_semana)

##########################Graphics########################
library(ggplot2)
library(dplyr)

ggplot(fallecimientos_dia, aes(x=Dia , y=Fallecimientos_totales)) +
  geom_bar(stat = 'identity',fill="lightblue") +
  ggtitle ("Total de fallecimientos por dia de la semana")
  
