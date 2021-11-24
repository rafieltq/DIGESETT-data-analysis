library(ggplot2)
library(hrbrthemes)

##por dia

ggplot(fallecimientos_dia, aes(x=AÑO, y=FALLECIDOS)) + 
  geom_bar(stat = "identity")

ggplot(fallecimientos_dia, aes(x=dia_semana, y=FALLECIDOS)) + 
  geom_bar(stat = "identity")

##por genero

ggplot(fallecimientos_genero, aes(x=genero,y=FALLECIDOS)) + 
  geom_bar(stat="identity")

##por hora

ggplot(fallecimientos_hora, aes(x=INTERVALOS_HORAS,y=FALLECIDOS)) + 
  geom_bar(stat="identity")

##tipo

ggplot(fallecimientos_tipo, aes(x=TIPO_ACCIDENTE,y=FALLECIDOS)) + 
  geom_bar(stat="identity")

##########Exporting dataframes#################
library(openxlsx)

write.xlsx(fallecimientos_dia,'../Clean_DATA/', row.names = FALSE)
write.xlsx(fallecimientos_genero,'../Clean_DATA/', row.names = FALSE)
write.xlsx(fallecimientos_hora,'../Clean_DATA/', row.names = FALSE)
write.xlsx(fallecimientos_tipo,'../Clean_DATA/', row.names = FALSE)
