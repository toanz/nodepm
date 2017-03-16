FROM node:alpine
MAINTAINER toan <toan@ejoy.io>

RUN npm install pm2 -g

VOLUME ["/app"]

# Expose ports
EXPOSE 80 443 43554

WORKDIR /app

# Start process.yml
CMD ["pm2-docker", "start", "--auto-exit", "--env", "production", "start.yml"]