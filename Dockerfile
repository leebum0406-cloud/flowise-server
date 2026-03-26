FROM flowiseai/flowise:latest
USER root
RUN mkdir -p /data && chmod 777 /data
ENV PORT=3000
ENV DATABASE_PATH=/data
ENV APIHOST=0.0.0.0
CMD ["start"]
