# Jeu de Pendu en Lua (POO)

## Description
Ce programme implémente un jeu de pendu simple en Lua en utilisant le concept de programmation orientée objet (POO). Le jeu sélectionne un mot aléatoire parmi une liste, et le joueur doit deviner les lettres du mot avant d'épuiser toutes les tentatives.

## Structure des Fichiers

### `main.lua`
Le fichier principal qui crée une instance de la classe Pendue et lance le jeu.

### `pendue.lua`
Le module principal qui définit la classe Pendue et ses méthodes.

### `selecmot.lua`
Module qui contient la logique pour la sélection aléatoire d'un mot.

### `mathem.lua`
Module qui contient des fonctions mathématiques, telles que la génération de nombres aléatoires.

## Comment Jouer

1. Exécutez le programme en utilisant la commande `lua main.lua` ou  executé le fichier `run.bat`.
2. Le programme sélectionnera un mot aléatoire.
3. Devinez les lettres du mot en saisissant une lettre à la fois.
4. Le programme vous indiquera si la lettre est présente dans le mot.
5. Continuez à deviner jusqu'à ce que vous ayez trouvé le mot ou épuisé toutes les tentatives.

## Configuration
Aucune configuration supplémentaire n'est nécessaire. Cependant, vous pouvez personnaliser la liste de mots dans le fichier `motssac.json`.

## Dépendances
- Lua (assurez-vous d'avoir Lua installé sur votre système)

## Auteur
VIRY brandon alias Chikara974

## Licence
Ce projet est sous AUCUNE licence.

