FROM node:18-alpine

WORKDIR /app

# puppeteer 다운로드 완전 차단
ENV PUPPETEER_SKIP_DOWNLOAD=true

# 메모리 줄이기 + 최소 설치
RUN npm install -g flowise --omit=dev --no-optional

EXPOSE 3000

CMD ["flowise", "start"]
