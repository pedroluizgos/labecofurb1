install.packages("WDI")
library(WDI)
install.packages("ggplot2")
library(ggplot2)

pib_codigo <- "NY.GDP.PCAP.CD"
expectativa_codigo <- "SP.DYN.LE00.IN"

dados <- WDI(indicator = c(pib_codigo, expectativa_codigo), start = 2000, end = 2023)

head(dados)

dados_mundiais22 <- WDI(indicator = c(pib_codigo, expectativa_codigo), start = 2022, end = 2022)

head(dados_mundiais22)

ggplot(dados_mundiais22, aes(x = NY.GDP.PCAP.CD, y = SP.DYN.LE00.IN, color = country)) +
  geom_point(alpha = 0.6) + # Pontos de dispersão
  labs(title = "Corte Transversal: PIB per capita vs Expectativa de vida ao nascer",
       x = "PIB per capita (USD)",
       y = "Expectativa de vida ao nascer (anos)",
       color = "País") +
  theme_minimal() +
  theme(legend.position = "none") +  # Remove a legenda de países para melhorar o gráfico
  scale_x_continuous(labels = scales::comma) +  # Adiciona formatação para o eixo X
  scale_y_continuous(labels = scales::comma) # Adiciona formatação para o eixo Y

ggplot(dados, aes(x = year, y = NY.GDP.PCAP.CD)) +
  geom_line(color = "blue", size = 1) +
  labs(title = "Série Temporal do PIB per capita - Brasil",
       x = "Ano",
       y = "PIB per capita (US$)") +
  theme_minimal()

install.packages("palmerpenguins")
install.packages("quarto")
