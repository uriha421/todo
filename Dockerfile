FROM node:10.15.2

RUN mkdir -p /usr/src/todo

COPY dist/todo /usr/src/todo/dist/todo
COPY todo /usr/src/todo/todo
COPY deploy-package.json /usr/src/todo/deploy-package.json

WORKDIR /usr/src/todo

RUN npm install

EXPOSE 3000

CMD ["./todo"]
