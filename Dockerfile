FROM node:18-alpine AS builder
COPY . .
# test
RUN rm .env && mv .env.production .env
RUN npm i
RUN npm run build
EXPOSE 8080
ENTRYPOINT ["node", "dist/main"]