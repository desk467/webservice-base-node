FROM node:18-bullseye-slim as base

RUN corepack enable

WORKDIR /opt/app

COPY package.json .

RUN corepack prepare --activate

COPY . .

CMD [ "/bin/sh" ]

FROM base as testing

RUN yarn test

FROM base as lint

RUN yarn lint

FROM base as production

CMD ["yarn", "start"]
