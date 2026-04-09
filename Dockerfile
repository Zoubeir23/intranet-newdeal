# Dockerfile
FROM nginx:alpine3.23

# Copier les fichiers du site statique
COPY . /usr/share/nginx/html

# Supprimer les fichiers inutiles
RUN rm -f /usr/share/nginx/html/Dockerfile \
    && rm -rf /usr/share/nginx/html/.github

# Exposer le port 80
EXPOSE 80

# Commande de démarrage
CMD ["nginx", "-g", "daemon off;"]
