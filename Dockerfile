FROM node:slim

RUN apt-get update && apt-get install -y \
    git \
    curl
RUN apt-get upgrade -y

COPY package*.json ./

RUN npm install

WORKDIR /app

COPY . .

EXPOSE 8080

CMD ["npm", "run", "serve"]
