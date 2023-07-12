# versión de node
FROM node:18-alpine  
WORKDIR /app
# copia todo y lo mete en directorio
COPY . .
# qué hacer cuando se ejecute
RUN npm install 
WORKDIR /app/client
# run build empaqueta react para deseplegar
RUN npm install && npm run build
WORKDIR /app
CMD ["npm", "run", "deploy"]
EXPOSE 10000