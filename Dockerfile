# # #Aqui va las instrucciones para crear una imagen de docker
# ##docker build -t api-mongo . => este comando crea un contenedor.

# # #Necesitamos tener node  -- En la cual le comentamos a docker que version de node voy a usar
# # FROM node:12

# # #Le digo a docker donde van a estar las carpeta/protectos que se va a usar dentro de mi contenedor. -- Aqui docker va a guardar con esta ruta Ahora es la carpeta raiz
# # WORKDIR /usr/src/app

# # #Decirle a docker como levantar mi proyecto de node

# # #Copiar el package json y ponerlo en la carpeta raiz del contenedor
# # COPY package.json ./

# # #Una vez instalado el package el json ahora se instalan las depedencias
# # RUN npm install
# # #instalar nodemon de manera global
# # RUN npm install -g nodemon

# # #Copiar todo en donde estas parado a la raiz del contenedor
# # COPY . .

# # #Exponer un puerto del proyecto
# # EXPOSE 4020


# # #El comando para correr mi proyecto
# # CMD ["node", "index.js"]

# # #Para correr el comando de este archivo es docker build -t api-mongo .

# # ##Mi pc tendra el puerto 4000 y el de la aoplicaicon es 4020
# # ##Correr docker /// docker run -p 4000:4020 -d api-mongo


# ##############################INSTALANDO CON NODEMON###################

# #Aqui va las instrucciones para crear una imagen de docker


# #Necesitamos tener node  -- En la cual le comentamos a docker que version de node voy a usar
# #FROM node:12

# #Le digo a docker donde van a estar las carpeta/protectos que se va a usar dentro de mi contenedor. -- Aqui docker va a guardar con esta ruta Ahora es la carpeta raiz
# #WORKDIR /usr/src/app

# #Decirle a docker como levantar mi proyecto de node

# #Copiar el package json y ponerlo en la carpeta raiz del contenedor
# #COPY package.json ./

# #Una vez instalado el package el json ahora se instalan las depedencias
# #RUN npm install
# #instalar nodemon de manera global
# #RUN npm install -g nodemon

# #Copiar todo en donde estas parado a la raiz del contenedor
# #COPY . .

# #Exponer un puerto del proyecto
# #EXPOSE 4020


# #El comando para correr mi proyecto
# #CMD ["node", "index.js"]
# #CMD ["nodemon", "-L", "--watch", ".", "index.js"]


# #Para correr el comando de este archivo es docker build -t api-mongo .

# ##Mi pc tendra el puerto 4000 y el de la aoplicaicon es 4020
# ##Correr docker /// docker run -p 4000:4020 -d api-mongo



# ################################################Final de final########################################


# #Aqui va las instrucciones para crear una imagen de docker


# #Necesitamos tener node  -- En la cual le comentamos a docker que version de node voy a usar
# FROM node:12

# #Le digo a docker donde van a estar las carpeta/protectos que se va a usar dentro de mi contenedor. -- Aqui docker va a guardar con esta ruta Ahora es la carpeta raiz
# WORKDIR /usr/src/app

# #Decirle a docker como levantar mi proyecto de node

# #Copiar el package json y ponerlo en la carpeta raiz del contenedor
# COPY package.json ./

# #Una vez instalado el package el json ahora se instalan las depedencias
# RUN npm install
# #instalar nodemon de manera global
# RUN npm install -g nodemon

# #Copiar todo en donde estas parado a la raiz del contenedor
# COPY . .

# #Exponer un puerto del proyecto
# EXPOSE 4020


# #El comando para correr mi proyecto
# #CMD ["node", "index.js"]
# CMD ["nodemon", "-L", "--watch", ".", "index.js"]
# #CMD ["node", "index.js"]


# #Para correr el comando de este archivo es docker build -t api-mongo .

# ##Mi pc tendra el puerto 4000 y el de la aoplicaicon es 4020
# ##Correr docker /// docker run -p 4000:4020 -d api-mongo




# Aqui van las instrucciones para crear una imagen de docker

# Le digo a docker que version de node voy a usar
FROM node:12

# Le digo a docker donde van a estar las carpetas/proyectos que voy a usar dentro de mi container AHORA ES LA CARPETA RAIZ
WORKDIR /usr/src/app 

# Decirle a docker como levantar mi proyecto de node

# Copiar el pacakge json y ponerlo en la carpeta raiz del contenedor
COPY package.json ./

# Una vez copiado el package json ahora se instalan las dependencias
RUN npm install

# Instalo nodemon de manera global
RUN npm install -g nodemon

# Copiar la todo en donde estas parado a la raiz del contenedor
COPY . .

# Exponer un puerto desde el container
EXPOSE 4020

# El comando para correr mi proyecto con node
# CMD ["node", "index.js"]

# Comando para correr nodemon
ENTRYPOINT ["nodemon", "-L", "--watch", ".", "index.js"]

#CMD ["nodemon", "-L", "--watch", ".", "index.js"]
# CMD ["node", "index.js"]
# CMD ["npm", "start"]
















# ################################################Final de final########################################