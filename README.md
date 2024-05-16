# Bienvenu⸱e⸱s sur le Tib&Lo_CTF !

## Présentation 💬

Ce CTF est le rendu de projet du module Infra de B1 Info de Lyon Ynov Campus. Il a été réalisé par Tibor LASSALLE et Loïc GLANOIS. Il consiste en une série de conteneurs Docker sur lesquels sont déployées des CTFs de différentes catégories et de faible difficulté.

## Prérequis 👷

Ci-dessous, vous trouverez les prérequis nécessaires et les procédures d'installation pour pouvoir utiliser ce CTF.

### Docker & Docker Compose (si vous voulez héberger le CTF)

Si vous voulez héberger le CTF, vous aurez besoin du moteur Docker et de Docker Compose. Vous pouvez les installer en suivant les instructions sur le site officiel de Docker. Pour cela, suivez **scrupuleusement** les instructions accessibles ici : https://docs.docker.com/get-docker/.

<img src="resources/docker-cmd.png" alt="Docker sur cmd" />

### Git (toujours si vous voulez héberger le CTF)

Le projet étant hébergé sur GitHub, vous aurez besoin de Git pour le cloner sur votre machine. Vous pouvez l'installer en suivant les instructions sur le site officiel de Git. Là encore, les consignes sont accessibles ici : https://git-scm.com/book/fr/v2/D%C3%A9marrage-rapide-Installation-de-Git.

Une fois Docker et Git installés, vous pouvez cloner ce dépôt Git (que vous devez également avoir installé) sur votre machine en utilisant la commande suivante (il est recommandé de le cloner dans un dossier vide) :
    
    ```bash
    git clone https://github.com/loicglanoisatynov/projet.infra.b1.tiblo.ctf.git
    ```

Une fois le dépôt cloné, vous pouvez vous rendre dans le dossier du projet en utilisant la commande suivante :

    ```bash
    cd projet.infra.b1.tiblo.ctf
    ```

## Utilisation

**Si vous êtes sous Windows, vous devez lancer Docker Desktop pour pouvoir utiliser Docker. Si vous êtes sous Linux, vous pouvez utiliser Docker directement en ligne de commande.**

Le repos correctement cloné, voici comment utiliser Docker Compose pour démarrer les conteneurs (toujours dans le dossier du projet) : 

    ```bash
    docker-compose up -d
    ```

Voici quelques captures d'écran pour vous montrer ce que vous devriez obtenir :
Au lancement de docker-compose :
<img src="resources/docker-compose-launched.png" alt="Que voilà un docker-compose bien lancé !" />
Si il s'est terminé correctement, voici ce que vous devriez voir :
<img src="resources/docker-compose-finished.png" alt="Que voilà un docker-compose bien terminé !" />

Pour arrêter les conteneurs, utilisez la commande suivante :

    ```bash
    docker-compose down
    ```

Pour réinitialiser le dossier (suite à une mauvaise manipulation par exemple), vous pouvez utiliser la commande suivante :

    ```bash
    git reset --hard
    ```

## CTFs

### Conteneur 1 : MazeOfFiles

Ce CTF est un labyrinthe de fichiers dans lequel vous devrez trouver le fichier `password.txt`. Pour cela, vous devrez vous connecter au conteneur et naviguer dans les fichiers pour trouver le bon fichier, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 2 : MazeOfPorts

Ce CTF est un labyrinthe de ports dans lequel vous devrez trouver le port sur lequel est exposé le service. Pour cela, vous devrez scanner les ports du conteneur pour trouver le bon port, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 3 : MazeOfSecrets

Ce CTF est un labyrinthe de secrets dans lequel vous devrez trouver le secret caché. Pour cela, vous devrez vous connecter au conteneur et chercher le secret, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 4 : MazeOfUsers

Ce CTF est un labyrinthe d'utilisateurs dans lequel vous devrez trouver l'utilisateur caché. Pour cela, vous devrez vous connecter au conteneur et chercher l'utilisateur, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 5 : MazeOfWeb

Ce CTF est un labyrinthe de pages web dans lequel vous devrez trouver la page cachée. Pour cela, vous devrez scanner les pages du site pour trouver la bonne page, ou trouver un moyen de la chercher plus efficacement.

### Conteneur 6 : MazeOfWords

Ce CTF est un labyrinthe de mots dans lequel vous devrez trouver le mot caché. Pour cela, vous devrez vous connecter au conteneur et chercher le mot, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 7 : MazeOfNumbers

Ce CTF est un labyrinthe de nombres dans lequel vous devrez trouver le nombre caché. Pour cela, vous devrez vous connecter au conteneur et chercher le nombre, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 8 : MazeOfImages

Ce CTF est un labyrinthe d'images dans lequel vous devrez trouver l'image cachée. Pour cela, vous devrez vous connecter au conteneur et chercher l'image, ou trouver un moyen de la chercher plus efficacement.

### Conteneur 9 : MazeOfColors

Ce CTF est un labyrinthe de couleurs dans lequel vous devrez trouver la couleur cachée. Pour cela, vous devrez vous connecter au conteneur et chercher la couleur, ou trouver un moyen de la chercher plus efficacement.

### Conteneur 10 : MazeOfSounds

Ce CTF est un labyrinthe de sons dans lequel vous devrez trouver le son caché. Pour cela, vous devrez vous connecter au conteneur et chercher le son, ou trouver un moyen de le chercher plus efficacement.

### Conteneur 11 : MazeOfVideos

Ce CTF est un labyrinthe de vidéos dans lequel vous devrez trouver la vidéo cachée. Pour cela, vous devrez vous connecter au conteneur et chercher la vidéo, ou trouver un moyen de la chercher plus efficacement.

### Conteneur 12 : MazeOfFlags

Ce CTF est un labyrinthe de flags dans lequel vous devrez trouver le flag caché. Pour cela, vous devrez vous connecter au conteneur et chercher le flag, ou trouver un moyen de le chercher plus efficacement.

## Remerciements 🙏
