FROM node

RUN mdkir /uesr/src/app
WORKDIR /uesr/src/app

ENV PATH /uesr/src/app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . /uesr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
