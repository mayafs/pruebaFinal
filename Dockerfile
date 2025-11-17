# Imagen base ligera de Node
FROM node:24-alpine3.22

# Directorio de trabajo en la imagen
WORKDIR /app

# Copiar solo los archivos de dependencias primero
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de la app
COPY . .

# Configurar variable de entorno
ENV PORT=5000

# Exponer el puerto
EXPOSE $PORT

# Comando para iniciar la app
CMD ["npm", "start"]
