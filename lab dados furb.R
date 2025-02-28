install.packages("WDI") # PRIMEIRO A EXECUTAR
library(WDI) # CARREGAR O PACOTE

# Definir os códigos das variáveis
variaveis <- c("SP.DYN.LE00.IN", "SL.UEM.TOTL.ZS")

dados <- WDI(indicator = variaveis,
             country = 'all', # TODOS = "all"
             start = 2022, end = 2022)

install.packages("tidyverse")
library(tidyverse)      

dadosok <- WDI(indicator = variaveis,
               country = 'all', # TODOS = "all"
               start = 2022, end = 2022) %>%
  na.omit()

dadosbrcomp <- WDI(indicator = variaveis,
                   country = 'BR')  
