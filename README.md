# rtmp
Stream With RTMP

### Description
Une brève description de ce que fait votre application, ses fonctionnalités principales et pourquoi elle est utile.

### Prérequis
Avant de pouvoir exécuter cette application, assurez-vous que vous avez installé les éléments suivants :

#### 1- Installation de Docker Compose
    sudo apt update
    sudo apt install docker-ce docker-ce-cli containerd.io

#### 2- Démarrer les Conteneurs
    docker-compose up

#### 3- lancer la commande pour streamer
    ffmpeg -stream_loop -1 -re -i flv/file.flv -fflags +genpts -r 30 -c copy -f flv rtmp://localhost:1936/live/stream
#### 4- Utiliser VLC pour lire le stream
    rtmp://localhost:1937/live/new-stream

