library(ggplot2)
library(readr)

# Chargement des données
G_200001_1_learn_average <- read.csv("D:\\Users\\hlendrin\\Documents\\R_DOTG\\200001-1-learn\\average.csv", header = TRUE, sep = " ")
G_200001_1_random_average <- read.csv("D:\\Users\\hlendrin\\Documents\\R_DOTG\\200001-1-random\\average.csv", header = TRUE, sep = " ")



# TAUX ACCROISSEMENT LEARN -----


#    Données pour calculer les taux d'accroissement de la variable "avg.ssrate"------
# Initialiser le rang à NULL
  rang_succes_non_nul <- NULL

# Trouver la première valeur différente de zéro dans la colonne "avg.ssrate" et stocker son rang
for (i in 1:nrow(G_200001_1_learn_average)) {
  if (G_200001_1_learn_average[i, "avg.ssrate"] != 0) {
    premiere_valeur_ssrate <- G_200001_1_learn_average[i, "avg.ssrate"]
    rang_succes_non_nul <- as.character(i)
    break  # Arrêter la boucle dès que la première valeur différente de zéro est trouvée
  }
}

# Extraire la dernière valeur de la colonne "avg.ssrate" 
derniere_valeur_ssrate <- G_200001_1_learn_average[nrow(G_200001_1_learn_average), "avg.ssrate"]
#verificiation
head(G_200001_1_learn_average)
print(premiere_valeur_ssrate)
tail(G_200001_1_learn_average)
print(derniere_valeur_ssrate)

#    Données pour calculer les taux d'accroissement de la variable "accuracy"------

# Extraire la première et la dernière valeur de la colonne "avg.accuracy"
premiere_valeur_accuracy <- G_200001_1_learn_average[1, "avg.accuracy"]
derniere_valeur_accuracy <- G_200001_1_learn_average[nrow(G_200001_1_learn_average), "avg.accuracy"]
#verificiation
head(G_200001_1_learn_average)
print(premiere_valeur_accuracy)
tail(G_200001_1_learn_average)
print(derniere_valeur_accuracy)

# Vérifier si les valeurs sont vides et les remplacer par NA si c'est le cas
if (is.na(premiere_valeur_accuracy)) {
  premiere_valeur_accuracy <- NA
}

if (is.na(derniere_valeur_accuracy)) {
  derniere_valeur_accuracy <- NA
}

#vérification
print(premiere_valeur_accuracy)
print(derniere_valeur_accuracy)


# Création du fichier Valeurs stockant les Taux accroissement ------

# Créer un dataframe pour stocker les valeurs
valeurs <- data.frame(nom_fichier = character(), 
                      premiere_valeur_ssrate = numeric(),
                      rang_succes_non_nul = character(),
                      derniere_valeur_ssrate = numeric(),
                      Tx_Acc_ssrate = numeric(),
                      premiere_valeur_accuracy = numeric(), 
                      derniere_valeur_accuracy = numeric(),
                      Tx_Acc_accuracy = numeric())

# Ajouter les valeurs extraites au dataframe
nouvelle_ligne <- data.frame(nom_fichier = "G_200001_1_learn_average", 
                             premiere_valeur_ssrate = premiere_valeur_ssrate, 
                             rang_succes_non_nul = rang_succes_non_nul, 
                             derniere_valeur_ssrate = derniere_valeur_ssrate, 
                             Tx_Acc_ssrate = NA,
                             premiere_valeur_accuracy = premiere_valeur_accuracy, 
                             derniere_valeur_accuracy = derniere_valeur_accuracy,
                             Tx_Acc_accuracy = NA)

valeurs <- rbind(valeurs, nouvelle_ligne)

# Enregistrer le dataframe dans un fichier CSV
write.csv(valeurs, "valeurs_taux_accroissement.csv", row.names = FALSE)

# Ajout des moyennes de 20001-1-learn -------

# Importer les données du nouveau fichier CSV
G_20001_1_learn_average <- read.csv("D:\\Users\\hlendrin\\Documents\\R_DOTG\\20001-1-learn\\average.csv", header = TRUE, sep = " ")

# représentation graphique de "avg.ssrate" et "avg.accuracy" ------
# Créer le graphique avec ggplot





#    Données pour calculer les taux d'accroissement de la variable "avg.ssrate"------
# Initialiser le rang à NULL
rang_succes_non_nul <- NULL

# Trouver la première valeur différente de zéro dans la colonne "avg-ssrate" et stocker son rang
for (i in 1:nrow(G_200001_1_learn_average)) {
  if (G_20001_1_learn_average[i, "avg.ssrate"] != 0) {
    premiere_valeur_ssrate <- G_20001_1_learn_average[i, "avg.ssrate"]
    rang_succes_non_nul <- as.character(i)
    break  # Arrêter la boucle dès que la première valeur différente de zéro est trouvée
  }
}

# Extraire la dernière valeur de la colonne "avg-ssrate" 
derniere_valeur_ssrate <- G_20001_1_learn_average[nrow(G_20001_1_learn_average), "avg.ssrate"]
#verificiation
head(G_20001_1_learn_average)
print(premiere_valeur_ssrate)
tail(G_20001_1_learn_average)
print(derniere_valeur_ssrate)

#    Données pour calculer les taux d'accroissement de la variable "accuracy"------

# Extraire la première et la dernière valeur de la colonne "avg-accuracy"
premiere_valeur_accuracy <- G_20001_1_learn_average[1, "avg.accuracy"]
derniere_valeur_accuracy <- G_20001_1_learn_average[nrow(G_20001_1_learn_average), "avg.accuracy"]
#verificiation
head(G_20001_1_learn_average)
print(premiere_valeur_accuracy)
tail(G_20001_1_learn_average)
print(derniere_valeur_accuracy)

# Vérifier si les valeurs sont vides et les remplacer par NA si c'est le cas
if (is.na(premiere_valeur_accuracy)) {
  premiere_valeur_accuracy <- NA
}

if (is.na(derniere_valeur_accuracy)) {
  derniere_valeur_accuracy <- NA
}

#vérification
print(premiere_valeur_accuracy)
print(derniere_valeur_accuracy)

#    Ajouter une nouvelle ligne au dataframe valeurs -----
nouvelle_ligne <- data.frame(nom_fichier = "G_20001_1_learn_average", 
                             premiere_valeur_ssrate = premiere_valeur_ssrate, 
                             rang_succes_non_nul = rang_succes_non_nul, 
                             derniere_valeur_ssrate = derniere_valeur_ssrate, 
                             Tx_Acc_ssrate = NA,
                             premiere_valeur_accuracy = premiere_valeur_accuracy, 
                             derniere_valeur_accuracy = derniere_valeur_accuracy,
                             Tx_Acc_accuracy = NA)

valeurs <- rbind(valeurs, nouvelle_ligne)

# Ajout des moyennes de 10001-1-learn -------

# Importer les données du nouveau fichier CSV
G_10001_1_learn_average <- read.csv("D:\\Users\\hlendrin\\Documents\\R_DOTG\\10001-1-learn\\average.csv", header = TRUE, sep = " ")

#    Données pour calculer les taux d'accroissement de la variable "avg-ssrate"------
#    Initialiser le rang à NULL
rang_succes_non_nul <- NULL

#    Trouver la première valeur différente de zéro dans la colonne "avg-ssrate" et stocker son rang
for (i in 1:nrow(G_10001_1_learn_average)) {
  if (G_10001_1_learn_average[i, "avg.ssrate"] != 0) {
    premiere_valeur_ssrate <- G_10001_1_learn_average[i, "avg.ssrate"]
    rang_succes_non_nul <- as.character(i)
    break  # Arrêter la boucle dès que la première valeur différente de zéro est trouvée
  }
}

#    Extraire la dernière valeur de la colonne "avg-ssrate" 
derniere_valeur_ssrate <- G_10001_1_learn_average[nrow(G_10001_1_learn_average), "avg.ssrate"]
#verificiation
head(G_10001_1_learn_average)
print(premiere_valeur_ssrate)
tail(G_10001_1_learn_average)
print(derniere_valeur_ssrate)

#    Données pour calculer les taux d'accroissement de la variable "accuracy"------

# Extraire la première et la dernière valeur de la colonne "avg-accuracy"
premiere_valeur_accuracy <- G_10001_1_learn_average[1, "avg.accuracy"]
derniere_valeur_accuracy <- G_10001_1_learn_average[nrow(G_10001_1_learn_average), "avg.accuracy"]
#verificiation
head(G_10001_1_learn_average)
print(premiere_valeur_accuracy)
tail(G_10001_1_learn_average)
print(derniere_valeur_accuracy)

# Vérifier si les valeurs sont vides et les remplacer par NA si c'est le cas
if (is.na(premiere_valeur_accuracy)) {
  premiere_valeur_accuracy <- NA
}

if (is.na(derniere_valeur_accuracy)) {
  derniere_valeur_accuracy <- NA
}

#vérification
print(premiere_valeur_accuracy)
print(derniere_valeur_accuracy)

#    Ajouter une nouvelle ligne au dataframe valeurs -----
nouvelle_ligne <- data.frame(nom_fichier = "G_10001_1_learn_average", 
                             premiere_valeur_ssrate = premiere_valeur_ssrate, 
                             rang_succes_non_nul = rang_succes_non_nul, 
                             derniere_valeur_ssrate = derniere_valeur_ssrate, 
                             Tx_Acc_ssrate = NA,
                             premiere_valeur_accuracy = premiere_valeur_accuracy, 
                             derniere_valeur_accuracy = derniere_valeur_accuracy,
                             Tx_Acc_accuracy = NA)

valeurs <- rbind(valeurs, nouvelle_ligne)
# Ajout des moyennes de 5001-1-learn -------

# Importer les données du nouveau fichier CSV
G_5001_1_learn_average <- read.csv("D:\\Users\\hlendrin\\Documents\\R_DOTG\\5001-1-learn\\average.csv", header = TRUE, sep = " ")

#    Données pour calculer les taux d'accroissement de la variable "avg-ssrate"------
# Initialiser le rang à NULL
rang_succes_non_nul <- NULL

# Trouver la première valeur différente de zéro dans la colonne "avg-ssrate" et stocker son rang
for (i in 1:nrow(G_5001_1_learn_average)) {
  if (G_5001_1_learn_average[i, "avg.ssrate"] != 0) {
    premiere_valeur_ssrate <- G_5001_1_learn_average[i, "avg.ssrate"]
    rang_succes_non_nul <- as.character(i)
    break  # Arrêter la boucle dès que la première valeur différente de zéro est trouvée
  }
}

# Extraire la dernière valeur de la colonne "avg-ssrate" 
derniere_valeur_ssrate <- G_5001_1_learn_average[nrow(G_5001_1_learn_average), "avg.ssrate"]
#verificiation
head(G_5001_1_learn_average)
print(premiere_valeur_ssrate)
tail(G_5001_1_learn_average)
print(derniere_valeur_ssrate)

#    Données pour calculer les taux d'accroissement de la variable "accuracy"------

# Extraire la première et la dernière valeur de la colonne "avg-accuracy"
premiere_valeur_accuracy <- G_5001_1_learn_average[1, "avg.accuracy"]
derniere_valeur_accuracy <- G_5001_1_learn_average[nrow(G_5001_1_learn_average), "avg.accuracy"]
#verificiation
head(G_5001_1_learn_average)
print(premiere_valeur_accuracy)
tail(G_5001_1_learn_average)
print(derniere_valeur_accuracy)

# Vérifier si les valeurs sont vides et les remplacer par NA si c'est le cas
if (is.na(premiere_valeur_accuracy)) {
  premiere_valeur_accuracy <- NA
}

if (is.na(derniere_valeur_accuracy)) {
  derniere_valeur_accuracy <- NA
}

#vérification
print(premiere_valeur_accuracy)
print(derniere_valeur_accuracy)

#    Ajouter une nouvelle ligne au dataframe valeurs -----
nouvelle_ligne <- data.frame(nom_fichier = "G_5001_1_learn_average", 
                             premiere_valeur_ssrate = premiere_valeur_ssrate, 
                             rang_succes_non_nul = rang_succes_non_nul, 
                             derniere_valeur_ssrate = derniere_valeur_ssrate, 
                             Tx_Acc_ssrate = NA,
                             premiere_valeur_accuracy = premiere_valeur_accuracy, 
                             derniere_valeur_accuracy = derniere_valeur_accuracy,
                             Tx_Acc_accuracy = NA)

valeurs <- rbind(valeurs, nouvelle_ligne)
# Calculer les taux d'accroissement pour chaque ligne ------
valeurs$Tx_Acc_ssrate <- ((valeurs$derniere_valeur_ssrate - valeurs$premiere_valeur_ssrate) / valeurs$premiere_valeur_ssrate) 

valeurs$Tx_Acc_accuracy <- ((valeurs$derniere_valeur_accuracy - valeurs$premiere_valeur_accuracy) / valeurs$premiere_valeur_accuracy)



# Ajouter la colonne "periode" ------
library(dplyr)

# Définir la variable periode
periode <- NULL
periode <- case_when(
  valeurs$nom_fichier == "G_200001_1_learn_average" ~ 200001,
  valeurs$nom_fichier == "G_20001_1_learn_average" ~ 20001,
  valeurs$nom_fichier == "G_10001_1_learn_average" ~ 10001,
  valeurs$nom_fichier == "G_5001_1_learn_average" ~ 5001,
  TRUE ~ NA_integer_  # Valeur par défaut pour les autres cas
)

# Ajouter la colonne "periode" au tableau valeurs
valeurs <- valeurs %>%
  mutate(periode = periode)



# Créer un graphique à partir du dataframe 'valeurs'-----
library(ggplot2)

# Création du graphique
graphique <- ggplot(valeurs, aes(x = periode)) +
  geom_line(aes(y = Tx_Acc_ssrate, color = "Tx_Acc_ssrate"), size = 1) +
  geom_line(aes(y = Tx_Acc_accuracy, color = "Tx_Acc_accuracy"), size = 1) +
  labs(x = "Periode", y = "Valeur") +  # Étiquettes des axes
  scale_color_manual(values = c("Tx_Acc_ssrate" = "blue", "Tx_Acc_accuracy" = "red")) +  # Couleurs des courbes
  theme_minimal()  # Style minimal du graphique

# Affichage du graphique
print(graphique)



# VERIFICATIONS (utiles en cas de problèmes) -----
head(valeurs)

print(valeurs$premiere_valeur_ssrate)
print(valeurs$derniere_valeur_ssrate)
print(valeurs$premiere_valeur_accuracy)
print(valeurs$derniere_valeur_accuracy)

print(valeurs$Tx_Acc_ssrate)
print(valeurs$Tx_Acc_accuracy)

# Vérifier les valeurs NA dans les colonnes Tx_Acc_accuracy et Tx_Acc_ssrate
print("Tx_Acc_accuracy NA values:")
print(sum(is.na(valeurs$Tx_Acc_accuracy)))

print("Tx_Acc_ssrate NA values:")
print(sum(is.na(valeurs$Tx_Acc_ssrate)))

# Remplacer les valeurs NA par une valeur par défaut (par exemple, 0)
valeurs$Tx_Acc_accuracy[is.na(valeurs$Tx_Acc_accuracy)] <- 0
valeurs$Tx_Acc_ssrate[is.na(valeurs$Tx_Acc_ssrate)] <- 0

# Vérifier à nouveau les valeurs NA
print("Tx_Acc_accuracy NA values (after replacement):")
print(sum(is.na(valeurs$Tx_Acc_accuracy)))

print("Tx_Acc_ssrate NA values (after replacement):")
print(sum(is.na(valeurs$Tx_Acc_ssrate)))

# Afficher les premières lignes du dataframe
print(head(valeurs))

# ASTUCES ------
# supprimer une variable créée
rm(variable)
# Supprimer la deuxième ligne
valeurs <- valeurs[-5, ]
# Ré-indexer les lignes
rownames(valeurs) <- NULL

# Supprimer les lignes 3 et 4
valeurs <- valeurs[-c(3, 4), ]

# Remettre à jour l'index
rownames(valeurs) <- NULL

