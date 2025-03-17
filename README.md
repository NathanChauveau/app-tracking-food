# App Tracking Food


## Fonctionnalités
Suivi des aliments : Enresgistrement des produits.
Calcul des calories : Suivi de l'apport calorique quotidien.
Plans de repas personnalisés : Création et gestion de plans de repas adaptés aux objectifs nutritionnels de l'utilisateur.
## Version
Ruby 3.37
Git 2.46.0.windows.1

## Installation
Cloner le dépôt :

```bash
git clone https://github.com/NathanChauveau/app-tracking-food.git
cd app-tracking-food
```
Installer les gemmes :

```bash
bundle install
```
Configurer l'application :

Copiez le fichier config/database.yml.example en config/database.yml et ajustez les paramètres de connexion à la base de données si nécessaire.

Créer et initialiser la base de données :

```bash
rails db:create
rails db:migrate
```
## Utilisation

Lancer le serveur rails :
```bash
rails server
```
Soyez sur que vous le lancer en development (avec rails server -e development)


Licence
Ce projet est sous licence Unlicense.
