FROM node:21-alpine

WORKDIR /app

COPY . .

RUN yarn
RUN yarn build

EXPOSE 8000

RUN ["chmod", "+x", "./entrypoint.sh"]

ENTRYPOINT [ "sh", "./entrypoint.sh" ]