FROM flowiseai/flowise:1.8.2

USER root
RUN mkdir -p /data && chmod 777 /data

ENV PORT=3000
ENV DATABASE_PATH=/data
ENV APIHOST=0.0.0.0
ENV FLOWISE_USERNAME=
ENV FLOWISE_PASSWORD=
ENV FLOWISE_AUTH_ENABLED=false
CMD npx flowise start

