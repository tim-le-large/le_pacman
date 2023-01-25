#Download Node Alpine image
FROM node:17-alpine 

#Setup the working directory
WORKDIR /usr/src/app

#Copy package.json
COPY package.json package-lock.json ./

RUN npm install

#Copy other files and folder to working directory
COPY . .

EXPOSE 8080
#Build Angular application in PROD mode
CMD ["npm", "start"]

