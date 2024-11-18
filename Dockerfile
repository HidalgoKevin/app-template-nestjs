# Usa una imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos de dependencias
#COPY package*.json ./
# Copia los archivos de dependencias definidos
COPY package.json package-lock.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Construye la aplicación NestJS
RUN npm run build

# Comando para iniciar la aplicación
CMD ["npm", "start"]
