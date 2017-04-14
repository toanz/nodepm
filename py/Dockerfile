FROM node:alpine
MAINTAINER toan <toan@ejoy.io>

# extra tools to build native lib
RUN apk add --no-cache make gcc g++ python

RUN npm install pm2 -g

VOLUME ["/app"]

# Expose ports
EXPOSE 80 443 43554

WORKDIR /app

# Start process.yml
CMD ["pm2-docker", "start", "--auto-exit", "--env", "production", "start.yml"]