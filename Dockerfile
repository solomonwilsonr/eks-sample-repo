# Pin to a modern Alpine variant to pick up patched libs
FROM node:20-alpine3.20

# Create an app directory owned by node user (built-in in Node images)
WORKDIR /usr/src/app
RUN addgroup -g 1001 -S app && adduser -S -u 1001 -G app app

# Copy only what's needed, with ownership
COPY --chown=app:app app/server.js ./server.js
RUN echo '{}' > package.json

USER app

EXPOSE 3000
CMD ["node", "server.js"]
