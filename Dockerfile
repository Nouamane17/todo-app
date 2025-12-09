FROM node:14-alpine

# Installer git, python et outils de compilation
RUN apk add --no-cache git python3 make g++

# Cloner le dépôt
RUN git clone -q https://https://github.com/Nouamane17/todo-app

# Définir le dossier courant
WORKDIR /todo-app

# Copier les fichiers locaux (si nécessaire)
COPY . .

# Installer les dépendances en mode production
RUN yarn install --production

# Lancer l'application
CMD ["node", "src/index.js"]
