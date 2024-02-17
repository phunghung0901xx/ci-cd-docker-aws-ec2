FROM node:18.18.0

# Set the working directory in the container
WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

RUN yarn build

EXPOSE 80

CMD ["yarn", "start"]
