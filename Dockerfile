FROM node:hydrogen-bookworm-slim as yarn
RUN apt-get update -y && apt-get install -y openssl

WORKDIR /home/node/app
COPY package.json yarn.lock ./
RUN cd ./ && yarn install
COPY . .


RUN npx prisma generate
ENTRYPOINT ["npx", "prisma", "studio"]