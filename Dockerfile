FROM node:14-alpine as development
ENV NODE_ENV development

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm i

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "start" ]
