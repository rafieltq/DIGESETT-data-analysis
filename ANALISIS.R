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

