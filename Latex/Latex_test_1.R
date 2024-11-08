#install.packages(c("knitr", "latex2exp", "tikzDevice", "tools"))
# Installer le package latex2exp en sp�cifiant CRAN
#install.packages("latex2exp", repos = "https://cloud.r-project.org")
install.packages("tibble")

# Charger le package latex2exp
library(latex2exp)
library(knitr)
library(tikzDevice)
library(tibble)
library(kableExtra)


# Charger les donn�es depuis un fichier TSV en utilisant read.table
donnees <- read.table("D:\\Users\\hlendrin\\Documents\\R_DOTG\\analysis\\acc-rand-vs-inc.tsv", header = TRUE, sep = "", dec = ".")

# V�rifier les premi�res lignes des donn�es
head(donnees)
















# Charger les donn�es depuis un fichier TSV en sp�cifiant le s�parateur de colonnes
donnees <- read.table("D:\\Users\\hlendrin\\Documents\\R_DOTG\\analysis\\acc-rand-vs-inc.tsv", header = TRUE, sep = "\t")

# V�rifier les premi�res lignes des donn�es
head(donnees)







# Charger les donn�es depuis un fichier TSV
donnees <- read.table("D:/Users/hlendrin/Documents/R_DOTG/analysis/acc-rand-vs-inc.tsv", header=TRUE, sep="\t")

# Ou si les noms des colonnes sont inclus dans le fichier
donnees <- read.delim("D:/Users/hlendrin/Documents/R_DOTG/analysis/acc-rand-vs-inc.tsv", 
                      header = TRUE)

# Charger les donn�es en sp�cifiant le s�parateur de colonne
donnees <- read.table("D:/Users/hlendrin/Documents/R_DOTG/analysis/acc-rand-vs-inc.tsv", 
                      header = TRUE, 
                      sep = "\t")

# Afficher les premi�res lignes du tableau
head(donnees)

# Charger la biblioth�que tibble
library(tibble)

# Cr�er un tableau � partir de vos donn�es
donnees_tableau <- tibble(
  iteration = donnees$iteration,
  rlow_5001 = donnees$rlow_5001,
  llow_5001 = donnees$llow_5001,
  rlow_10001 = donnees$rlow_10001,
  llow_10001 = donnees$llow_10001,
  rlow_20001 = donnees$rlow_20001,
  llow_20001 = donnees$llow_20001,
  rhigh_5001 = donnees$rhigh_5001,
  lhigh_5001 = donnees$lhigh_5001,
  rhigh_10001 = donnees$rhigh_10001,
  lhigh_10001 = donnees$lhigh_10001,
  rhigh_20001 = donnees$rhigh_20001,
  lhigh_20001 = donnees$lhigh_20001
)

# Charger le package knitr
library(knitr)
library(kableExtra)
# Utiliser kable pour rendre le tableau joli
kable(donnees_tableau)

# Affichage de la matrice de corr?lation avec une taille de police r?duite
kable(donnees_tableau, 
      align = "c", 
      format = "html") %>%
  kable_styling(full_width = FALSE, font_size = 10)  # R?duire la taille de police ? 12 points


