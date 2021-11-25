library(RMySQL)

mydb = dbConnect(MySQL(), user='rafiel',password='RTQ2203003#@',
                 dbname="digesett_clean",
                 host='localhost',
                 port=3306)

dbListTables(mydb)

query = dbSendQuery(mydb, "select * from fallecimientos_hora")

data = fetch(query, n=-1)

fallecimientos_hora <- data

fallecimientos_hora <- data.frame(lapply(fallecimientos_hora, function(x) {gsub("Ã‘", "Ñ", x)}))
colnames(fallecimientos_hora)[1] <- "INTERVALOS_HORAS"
#colnames(fallecimientos_hora)[3] <- "AÑO"

fallecimientos_hora$INTERVALOS_HORAS <- factor(fallecimientos_hora$INTERVALOS_HORAS)
fallecimientos_hora$FALLECIDOS <- as.numeric(fallecimientos_hora$Fallecimientos_totales)

fallecimientos_hora$`2016` <- as.numeric(fallecimientos_hora$`2016`)
fallecimientos_hora$`2017` <- as.numeric(fallecimientos_hora$`2017`)
fallecimientos_hora$`2018` <- as.numeric(fallecimientos_hora$`2018`)
fallecimientos_hora$`2019` <- as.numeric(fallecimientos_hora$`2019`)
fallecimientos_hora$`2020` <- as.numeric(fallecimientos_hora$`2020`)
fallecimientos_hora$`2021` <- as.numeric(fallecimientos_hora$`2021`)

class(fallecimientos_hora$AÑO)
class(fallecimientos_hora$FALLECIDOS)

dbDisconnect(mydb)

#################Explore########################
library(PASWR)

fallecidos_hora <- fallecimientos_hora$Fallecimientos_totales

summary(fallecimientos_hora)

EDA(fallecidos_hora)

###############Transform######################

str(fallecimientos_hora)


fallecimientos_hora$INTERVALOS_HORAS <- factor(fallecimientos_hora$INTERVALOS_HORAS)

fallecimientos_hora <- fallecimientos_hora[-c(4, 8), ]

############Graphics#############
library(ggplot2)
library(dplyr)

ggplot(fallecimientos_hora, aes(x=fallecimientos_hora$INTERVALOS_HORAS , y=fallecimientos_hora$`2016`)) +
  geom_bar(stat = 'identity',fill=rgb(1,0,0,0.5)) +
  ggtitle ("Total de fallecimientos por hora del dia")


ggplot(fallecimientos_hora, aes(x=fallecimientos_hora$INTERVALOS_HORAS , y=fallecimientos_hora$`2020`)) +
  geom_bar(stat = 'identity',fill=rgb(1,0,0,0.5)) +
  ggtitle ("Total de fallecimientos por hora del dia")


