# Serveur de fichier Nginx

Conteneur Docker, pour partager les photos.

## Création du fichier d'authentification

```
$ sudo sh -c "echo -n 'pi:' >> .htpasswd"
$ sudo sh -c "openssl passwd -apr1 >> .htpasswd"
```

## Conteneur Docker

```
$ docker build -t file-server-nginx .
$ docker run -d -p 8001:8001 -v /home/pi/data:/data --name file-server file-server-nginx
```

## Utilisation

Se connecter sur le port 8001.

