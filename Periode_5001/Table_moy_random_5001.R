library(ggplot2)
library(readr)
library(knitr)
library(kableExtra)
library(dplyr)

# Graph periode 5001 transmission aléatoire moyenne des random ------
# Importer les donnees
url <- "https://raw.githubusercontent.com/NinaComete/DOTG/master/5001-1-random/average.csv"
G_5001_1_random <- read.csv(url, header = TRUE, sep = " ")

url <- "https://raw.githubusercontent.com/NinaComete/DOTG/master/5001-0.8-random/average.csv"
G_5001_08_random <- read.csv(url, header = TRUE, sep = " ")

url <- "https://raw.githubusercontent.com/NinaComete/DOTG/master/5001-0.6-random/average.csv"
G_5001_06_random <- read.csv(url, header = TRUE, sep = " ")

url <- "https://raw.githubusercontent.com/NinaComete/DOTG/master/5001-0.4-random/average.csv"
G_5001_04_random <- read.csv(url, header = TRUE, sep = " ")

url <- "https://raw.githubusercontent.com/NinaComete/DOTG/master/5001-0.2-random/average.csv"
G_5001_02_random <- read.csv(url, header = TRUE, sep = " ")


# Fonction pour calculer la moyenne des mêmes lignes des 5 fichiers importés
calculate_row_mean <- function(tables) {
  # Initialiser une liste pour stocker les lignes moyennes
  mean_rows <- list()
  
  # Boucler à travers chaque ligne des tables
  for (i in 1:nrow(tables[[1]])) {
    # Extraire les lignes correspondantes de chaque table
    rows <- lapply(tables, function(table) table[i, ])
    # Calculer la moyenne des valeurs pour chaque ligne
    mean_row <- colMeans(do.call(rbind, rows), na.rm = TRUE)
    # Ajouter la ligne moyenne à la liste
    mean_rows[[i]] <- mean_row
  }
  
  # Créer un dataframe à partir des lignes moyennes calculées
  df_moyennes_5001 <- as.data.frame(do.call(rbind, mean_rows))
  
  # Récupérer les noms de colonnes de la première table
  col_names <- colnames(tables[[1]])
  
  return(list(df_moyennes_5001, col_names))
}

# Stocker les tables importées dans une liste
tables <- list(G_5001_1_random, G_5001_08_random, G_5001_06_random, G_5001_04_random, G_5001_02_random)

# Calculer la moyenne des mêmes lignes des 5 fichiers importés
mean_data <- calculate_row_mean(tables)
df_moyennes_5001 <- mean_data[[1]]
col_names <- mean_data[[2]]

# Ajouter une rangée pour les noms de colonnes
colnames(df_moyennes_5001) <- col_names

# Exporter la table moyenne en tant que fichier CSV
write.csv(df_moyennes_5001, file = "table_moyenne_random_5001.csv", row.names = TRUE)










