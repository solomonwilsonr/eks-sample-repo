FROM node:20-alpine
WORKDIR /usr/src/app
COPY app ./app
WORKDIR /usr/src/app/app
RUN echo '{}' > package.json
EXPOSE 3000
CMD ["node", "server.js"]
