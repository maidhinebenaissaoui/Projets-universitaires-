# ==============================================================================
# PROJET MÉMOIRE : ANALYSE DU TEMPS PARTIEL (EEC 2023)
# ==============================================================================

# 1. CHARGEMENT DES PACKAGES ---------------------------------------------------
library(questionr)
library(readr)
library(tidyverse)
library(dplyr)
library(survey)

# 2. IMPORTATION ET PRÉPARATION DES DONNÉES (4 TRIMESTRES) ---------------------

# Note pour le lecteur : Les chemins d'accès sont relatifs au dossier du projet.
# Définition du répertoire de travail
# setwd("/Chemin/Vers/Mon/Dossier/Projet")

# --- Import du Trimestre 1 ---
# Lecture du fichier CSV
T1 <- read.csv2("data/indiv221.csv", sep=";", dec=".", stringsAsFactors=TRUE)
indiv221 <- read.csv2("data/indiv221.csv", sep=";")

# Création de l'identifiant unique (IDENT + IDENTM + NOI)
indiv221$IDENT_r <- paste(indiv221$IDENT, indiv221$IDENTM, indiv221$NOI, sep = "")

# Création de la variable IMMI_rec
indiv221$IMMI_rec <- ifelse(indiv221$IMMI_PAR1 == "1"| indiv221$IMMI_PAR2 == "1" , "1","2")

# Subset avec les variables d'intérêt pour T1 (Filtrage des vides)
T1_r <- subset(indiv221, !(AGE3B %in% "") 
             & !(APCS1_Y %in% "")
             & !(EXTRI %in% "")
             & !(SEXE %in% "") 
             & !(DIP3 %in% "") 
             & !(NATIO_Y %in% "") 
             & !(TPPRED %in% "") 
             & !(PCS1 %in% "")
             & !(NAFG004UN %in% "")
             & !(IMMI_rec %in% "")
             & !(IMMI %in% "")
             & !(RAISTP %in% "")
             & !(IDENT_r %in% "")
             & !(RGA %in% "")
             & !(SALDURA %in% "")
             & !(NBENFIND_LOG %in% "")
             & !(GARDEA_Y %in% "")
             & !(EXTRID %in% "")
             , select=c(EXTRID,GARDEA_Y,SALDURA,RGA,IDENT_r,EXTRI,SEXE,AGE3B,PCS1,DIP3,NATIO_Y,TPPRED,TXTPPRED,STCOMM2020,NAFG004UN,IMMI_rec,IMMI,RAISTP,NBENFIND_LOG))

# --- Import du Trimestre 2 ---
indiv222 <- read.csv("data/indiv222.csv", sep=";")
indiv222$IDENT_r <- paste(indiv222$IDENT, indiv222$IDENTM, indiv222$NOI, sep = "")
indiv222$IMMI_rec <- ifelse(indiv222$IMMI_PAR1 == "1"| indiv222$IMMI_PAR2 == "1" , "1","2")

T2 <- subset(indiv222, !(AGE3B %in% "") 
           & !(APCS1_Y %in% "")
           & !(EXTRI %in% "")
           & !(SEXE %in% "") 
           & !(DIP3 %in% "") 
           & !(NATIO_Y %in% "") 
           & !(TPPRED %in% "") 
           & !(PCS1 %in% "")
           & !(NAFG004UN %in% "")
           & !(IMMI_rec %in% "")
           & !(IMMI %in% "")
           & !(RAISTP %in% "")
           & !(IDENT_r %in% "")
           & !(RGA %in% "")
           & !(SALDURA %in% "")
           & !(NBENFIND_LOG %in% "")
           & !(GARDEA_Y %in% "")
           & !(EXTRID %in% "")
           , select=c(EXTRID,GARDEA_Y,SALDURA,RGA,IDENT_r,EXTRI,SEXE,AGE3B,PCS1,DIP3,NATIO_Y,TPPRED,TXTPPRED,STCOMM2020,NAFG004UN,IMMI_rec,IMMI,RAISTP,NBENFIND_LOG))

# --- Import du Trimestre 3 ---
indiv223 <- read.csv("data/indiv223.csv", sep=";")
indiv223$IDENT_r <- paste(indiv223$IDENT, indiv223$IDENTM, indiv223$NOI, sep = "")
indiv223$IMMI_rec <- ifelse(indiv223$IMMI_PAR1 == "1"| indiv223$IMMI_PAR2 == "1" , "1","2")

T3 <- subset(indiv223, !(AGE3B %in% "") 
           & !(APCS1_Y %in% "")
           & !(SEXE %in% "") 
           & !(EXTRI %in% "")
           & !(DIP3 %in% "") 
           & !(NATIO_Y %in% "") 
           & !(TPPRED %in% "") 
           & !(PCS1 %in% "")
           & !(NAFG004UN %in% "")
           & !(IMMI_rec %in% "")
           & !(IMMI %in% "")
           & !(RAISTP %in% "")
           & !(IDENT_r %in% "")
           & !(RGA %in% "")
           & !(SALDURA %in% "")
           & !(NBENFIND_LOG %in% "")
           & !(GARDEA_Y %in% "")
           & !(EXTRID %in% "")
           , select=c(EXTRID,GARDEA_Y,SALDURA,RGA,IDENT_r,EXTRI,SEXE,AGE3B,PCS1,DIP3,NATIO_Y,TPPRED,TXTPPRED,STCOMM2020,NAFG004UN,IMMI_rec,IMMI,RAISTP,NBENFIND_LOG))

# --- Import du Trimestre 4 ---
indiv224 <- read.csv("data/indiv224.csv", sep=";")
indiv224$IDENT_r <- paste(indiv224$IDENT, indiv224$IDENTM, indiv224$NOI, sep = "")
indiv224$IMMI_rec <- ifelse(indiv224$IMMI_PAR1 == "1"| indiv224$IMMI_PAR2 == "1" , "1","2")

T4 <- subset(indiv224, !(AGE3B %in% "") 
           & !(APCS1_Y %in% "")
           & !(EXTRI %in% "")
           & !(SEXE %in% "") 
           & !(DIP3 %in% "") 
           & !(NATIO_Y %in% "") 
           & !(TPPRED %in% "") 
           & !(PCS1 %in% "")
           & !(NAFG004UN %in% "")
           & !(IMMI_rec %in% "")
           & !(IMMI %in% "")
           & !(RAISTP %in% "")
           & !(IDENT_r %in% "")
           & !(RGA %in% "")
           & !(SALDURA %in% "")
           & !(NBENFIND_LOG %in% "")
           & !(GARDEA_Y %in% "")
           & !(EXTRID %in% "")
           , select=c(EXTRID,GARDEA_Y,SALDURA,RGA,IDENT_r,EXTRI,SEXE,AGE3B,PCS1,DIP3,NATIO_Y,TPPRED,TXTPPRED,STCOMM2020,NAFG004UN,IMMI_rec,IMMI,RAISTP,NBENFIND_LOG))

# Nettoyage de la mémoire (suppression des gros fichiers bruts)
remove(indiv221, indiv222, indiv223, indiv224)

# 3. FUSION DES DONNÉES (BINDING) ----------------------------------------------

# Uniformisation des types (tout en caractère pour éviter les erreurs de fusion)
T1_r <- T1_r %>% mutate(across(everything(), as.character))
T2 <- T2 %>% mutate(across(everything(), as.character))
T3 <- T3 %>% mutate(across(everything(), as.character))
T4 <- T4 %>% mutate(across(everything(), as.character))

# Fusion finale dans EEC_complet
EEC_complet <- bind_rows(T1_r, T2, T3, T4) %>%
  distinct(IDENT_r, .keep_all = TRUE)  # Supprime les doublons sur l'identifiant

# Vérification doublons
any(duplicated(EEC_complet$IDENT_r))

# 4. RECODAGE DES VARIABLES ----------------------------------------------------

EEC <- EEC_complet

# --- Facteurs et Labels ---
# Temps de travail (TPPRED)
EEC$TPPRED <- factor(EEC$TPPRED)
EEC$TPPRED <- fct_collapse(EEC$TPPRED, "Temps_complet" = "1", "Temps_partiel"="2") 

# Age (AGE3B)
EEC$AGE3B <- factor(EEC$AGE3B)
EEC$AGE3B <- fct_collapse(EEC$AGE3B, "15-24ans" = ("15"), "25-49"=c("25"),"50&+"= "50","Autre"="00")

# PCS (PCS1)
EEC$PCS1 <- factor(EEC$PCS1)
EEC$PCS1 <- fct_collapse(EEC$PCS1, "Agri" = ("1"), "ACC "= ("2"),"CPIS"=("3"),"PI"=("4"),"Employés"=("5"),"Ouvriers"=("6"),"Autres"=("0"))

# Diplôme (DIP3)
EEC$DIP3 <- factor(EEC$DIP3)
EEC$DIP3 <- fct_collapse(EEC$DIP3, "Sup" = ("1"), "Sec"= ("2"),"Aucun"=("3"))

# Sexe
EEC$SEXE <- factor(EEC$SEXE)
EEC$SEXE <- fct_collapse(EEC$SEXE, "Homme" = ("1"), "Femme"= ("2"))

# Raisons du temps partiel (RAISTP)
EEC$RAISTP <- factor(EEC$RAISTP)
EEC$RAISTP <- fct_collapse(EEC$RAISTP, "Pas_temps_complet" = ("1"), "pluriactivité "=c("2","5","6"),"Médicale"=c("4"),"Temps_libre"=("7"),"S'occuper_fam"= ("3"),"autres"=c("8"))

# Variable enfants (NBENFIND_LOG)
EEC$NBENFIND_LOG <- as.numeric(EEC$NBENFIND_LOG)
EEC$NBENFIND_LOG <- case_when(
  EEC$NBENFIND_LOG == 0 ~ "sans_enfants",
  EEC$NBENFIND_LOG > 0 ~ "avec_enfants",
  TRUE ~ ""
)

# Conversion pondération
EEC$EXTRI <- as.numeric(EEC$EXTRI)

# 5. ANALYSES STATISTIQUES (TRIS CROISÉS & TESTS) ------------------------------

# Exemple : Temps Partiel x Age
AGE <- wtd.table(EEC$AGE3B, EEC$TPPRED, exclude = c(NA,9), weights = EEC$EXTRI)  
print(AGE)
# Pourcentages
AGE_prop <- cprop(AGE)
print(AGE_prop)
# Test du Chi2
print(chisq.test(AGE))

# Exemple : Temps Partiel x Sexe
SEXE_tab <- wtd.table(EEC$SEXE, EEC$TPPRED, exclude = NA, weights = EEC$EXTRI)
print(cprop(SEXE_tab))
print(chisq.test(SEXE_tab))

# (Le reste des analyses suit cette logique...)
