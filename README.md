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
#####   Détails de la commande :
    ffmpeg : Outil en ligne de commande utilisé pour traiter et convertir des fichiers multimédia et les diffuser.
##### stream_loop -1 : 
    Cette option permet de lire le fichier source en boucle. Le -1 indique que le fichier sera répété en boucle infinie.
##### -re : 
    "Real-time" (temps réel). Cette option permet de lire le fichier à sa vitesse réelle. Cela est essentiel pour les flux en temps réel (live streaming) pour imiter la vitesse de lecture normale du fichier.
##### -i flv/file.flv :
    Spécifie le fichier d'entrée. Ici, flv/file.flv est un fichier FLV (Flash Video) situé dans le répertoire flv/.
##### -fflags +genpts :
    Génère des horodatages (timestamps) pour chaque image vidéo. Cela est nécessaire dans certains cas pour assurer la synchronisation correcte du flux lorsqu'il est lu en boucle.
##### -r 30 :
    Définit la fréquence d'images (frame rate) du flux de sortie à 30 images par seconde (fps). Cela garantit que la vidéo sera transmise à 30 fps.
##### -c copy :
    "Codec copy". Cette option indique à FFmpeg de copier directement les flux audio et vidéo sans les réencoder. Cela permet d'économiser des ressources tout en maintenant la qualité d'origine du fichier.
##### -f flv :
    Spécifie le format de sortie. Ici, flv est utilisé comme format de conteneur, car il est compatible avec le protocole RTMP.
##### rtmp://localhost:1936/live/stream :
    C'est l'URL de destination du flux RTMP. Le flux vidéo sera envoyé vers un serveur RTMP local qui écoute sur le port 1936 dans l'application /live, avec le nom du flux stream.

#### 4- Utiliser VLC pour lire le stream
    rtmp://localhost:1937/live/new-stream