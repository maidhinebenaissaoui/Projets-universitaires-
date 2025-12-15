# 💎 Dashboard R-Shiny : Exploration Interactive du Dataset Diamonds
Ce projet est une application web interactive développée en R avec le framework Shiny. Elle offre une interface utilisateur soignée pour explorer, filtrer et visualiser les relations entre les caractéristiques des diamants (prix, carat, couleur), en se basant sur le célèbre jeu de données diamonds.

## 🎯 Objectifs de l'application
L'objectif est de démontrer la capacité à créer un outil d'aide à la décision interactif permettant de :

Visualiser la corrélation entre le poids (carat) et le prix d'un diamant.

Segmenter la donnée selon des critères précis (Budget max, Qualité de couleur).

Consulter les données brutes via un tableau dynamique.

## 📊 Fonctionnalités Clés
Interface Réactive : L'application utilise un système de validation (bouton "Visualiser le graph") pour ne mettre à jour les calculs que lorsque l'utilisateur a fini de paramétrer ses filtres, optimisant ainsi les performances.

Filtres Dynamiques :

Sélection de la couleur du diamant (D, E, F, etc.).

Définition d'un prix maximum via un curseur (slider) allant jusqu'à 20 000 $.

Visualisation Interactive (Plotly) :

Nuage de points interactif (Scatter Plot) : survol des points pour voir les détails, zoom, et export.

Personnalisation graphique : Option pour changer la couleur des points (Rose/Noir) à la volée.

Tableau de Données Avancé (DT) :

Affichage des données filtrées.

Masquage automatique des colonnes techniques (dimensions x, y, z) pour une meilleure lisibilité.

Design Moderne : Utilisation du package bslib avec le thème Bootstrap 5 "Litera" pour une interface épurée et professionnelle.

## 🛠 Stack Technique
Ce projet mobilise plusieurs librairies R spécialisées :

Core : shiny (Server/UI), shinylive.

Data Manipulation : dplyr (filtrage des données avec pipes |>).

Visualisation : * ggplot2 (création du graphique de base).

plotly (conversion en graphique web interactif).

Interface & Design : * bslib (thèmes Bootstrap).

thematic (adaptation automatique des graphiques au thème CSS).

Tableaux : DT (DataTables interactives).
