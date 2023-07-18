FROM node:16-alpine

WORKDIR /app

COPY start.sh start.sh

ENV DATABASE_URL=""
ARG DATABASE_URL

RUN npm install prisma

RUN npx prisma init
RUN rm .env

EXPOSE 5555

CMD ["sh", "start.sh"]
