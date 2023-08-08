
#Instrumentos de Análisis Urbanos II - TP1 

library(tidyverse)
library(readr)
library(dplyr)

#El objetivo de este estudio es examinar las Áreas de Protección Histórica presentes en cada barrio de la Ciudad Autónoma de Buenos Aires. Estas áreas se destacan por su significativo valor patrimonial, caracterizadas por su gran calidad urbana y arquitectónica. 

#Para ello se tomaron datos públicos generados, guardados y publicados por organismos de gobierno de la Ciudad Autónoma de Buenos Aires descargados desde https://data.buenosaires.gob.ar/dataset/

data <- read.csv("https://cdn.buenosaires.gob.ar/datosabiertos/datasets/secretaria-de-desarrollo-urbano/areas-proteccion-historica/areas-de-proteccion-historica.csv")

summary(data)

#Empleamos summary con el propósito de obtener una comprensión detallada acerca de la estructura y organización de la base de datos. La base de datos presenta las Áreas de Protección Histórica (APH) de la Ciudad Autónoma de Buenos Aires, organizándolas según su dirección, barrio y comuna correspondiente. Además, proporciona información sobre el número de APH, el tipo de denominación, la catalogación, el nivel de protección, el estado actual y la normativa legal a la cual está sujeta cada área.

#Ahora que conocemos la información contenida en el dataset, procederemos a limpiar y transformar los datos para obtener la información que necesitamos para resolver nuestra pregunta.:¿Cuál es el tipo de protección más frecuente de las Áreas de c Histórica (APH) en el barrio de Recoleta

filtro_recoleta <- filter(data, BARRIOS == "RECOLETA")

APH_proteccion <- select(filtro_recoleta, PROTECCION, BARRIOS)

summary(APH_proteccion)

