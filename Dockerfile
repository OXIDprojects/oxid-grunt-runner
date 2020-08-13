FROM node:10
RUN mkdir /app
RUN apt-get update && apt-get -y install fontforge ttfautohint

WORKDIR /app
COPY package*.json ./
COPY entrypoint.sh /
RUN npm install
RUN npm install -g grunt-cli

ENTRYPOINT ["/entrypoint.sh"]
