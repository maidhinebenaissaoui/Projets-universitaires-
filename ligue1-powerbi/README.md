# ⚽ Tableau de Bord Power BI : Analyse de la Ligue 1
Ce projet est une démonstration de compétences en Business Intelligence appliquée au domaine du sport. Il s'agit d'un rapport interactif complet réalisé sur Power BI, visant à analyser les performances des équipes de Ligue 1.

## 📂 Fichiers du projet
L1_BENAISSAOUI_Maïdhine.pbix : Le fichier source Power BI contenant le modèle de données, les mesures et les visualisations interactives.

POWER_BI_BENAISSAOUI_Maidhine.pdf : La version exportée du rapport pour une vue d'ensemble rapide.

## 🎯 Objectifs
L'objectif de ce tableau de bord est de transformer les statistiques de matchs en insights visuels clairs. Il permet d'explorer :

La performance économique des clubs : Visualisation dynamique des différents revenus des équipes.

Les Performances Offensives/Défensives : Analyse des buts marqués, encaissés et des ratios par match.

Les performances des joueurs: Visualisation d'indicateurs cruciaux (but/PD).

## 💾 Les Données
Ce tableau de bord repose sur la consolidation de trois sources de données distinctes, offrant une vision théorique mais cohérente de la Ligue 1 sur la période 2020-2024:

Données sportives et économiques (Transfermarkt via Kaggle) :

Le socle du projet est un dataset issu d'un scrap de Transfermarkt, référence de la donnée footballistique depuis 2009.

Il contient une trentaine de variables, dont des informations détaillées sur les joueurs (âge, taille...) utilisées dans la requête Player.

Données d'affluence (Web Scraping Power BI) :

Le jeu de données initial a été enrichi par un second scrap réalisé directement via Power BI.

Il cible une section spécifique de Transfermarkt non incluse dans le dataset Kaggle : les affluences des stades de Ligue 1.

Simulation des Droits TV (Générée par IA) :

Faute de données publiques exhaustives, j'ai intégré une table générée par intelligence artificielle simulant la distribution des droits TV domestiques.

Cette estimation reste cohérente avec la réalité économique car elle respecte les critères de répartition connus, tels que le classement des saisons précédentes.

## 🛠 Compétences techniques mises en œuvre
Ce projet mobilise l'ensemble de la chaîne de traitement Power BI :

1. Préparation des données (ETL)
Importation des statistiques de matchs (données brutes).

Nettoyage et transformation via Power Query pour rendre les données exploitables.

2. Modélisation & Calculs
Structuration du modèle de données (relations entre les tables Matchs, Équipes, Calendrier).

Création de mesures personnalisées en DAX (ex: Total de points, Moyenne de buts, Différence de buts).

3. Data Visualization
Conception d'une interface utilisateur intuitive.

Utilisation de segments (Slicers) pour filtrer les données par équipe ou journée.

Intégration de graphiques adaptés pour comparer les clubs de Ligue 1.

## 🚀 Comment visualiser le projet ?
Aperçu rapide : Consultez le fichier PDF (POWER_BI_BENAISSAOUI_Maidhine.pdf) inclus dans ce dépôt.

Expérience interactive :

Téléchargez le fichier .pbix.

Ouvrez-le avec Power BI Desktop.

Cliquez sur les différents graphiques et filtres pour explorer les statistiques de la Ligue 1.

Projet réalisé par Maïdhine Benaissaoui.
