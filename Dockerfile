FROM node:10.16-slim

ENV MULTI_FILE_SWAGGER_VERSION 2.3.0

RUN mkdir /app
RUN npm install -g multi-file-swagger@${MULTI_FILE_SWAGGER_VERSION}

WORKDIR /app

ENTRYPOINT ["multi-file-swagger"]
CMD ["help"]
