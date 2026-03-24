FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache python3 make g++ \
    && npm install -g flowise

EXPOSE 3000

CMD ["flowise", "start"]
