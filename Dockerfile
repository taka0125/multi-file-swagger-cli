ARG MULTI_FILE_SWAGGER_VERSION
ARG NODE_VERSION

FROM node:${NODE_VERSION}

RUN mkdir /app
RUN npm install -g multi-file-swagger@${MULTI_FILE_SWAGGER_VERSION}

WORKDIR /app

ENTRYPOINT ["multi-file-swagger"]
CMD ["help"]
