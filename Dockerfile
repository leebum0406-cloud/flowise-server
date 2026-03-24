FROM node:18-alpine

WORKDIR /app

# 메모리 줄이기 + puppeteer 다운로드 방지
ENV PUPPETEER_SKIP_DOWNLOAD=true

RUN apk add --no-cache python3 make g++ \
    && npm install -g flowise --omit=dev

EXPOSE 3000

CMD ["flowise", "start"]
