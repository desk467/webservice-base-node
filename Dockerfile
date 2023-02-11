FROM node:18-alpine as base

RUN corepack enable

WORKDIR /opt/app

COPY package.json .

RUN corepack prepare --activate

COPY . .

CMD [ "/bin/sh" ]

FROM base as testing

CMD [ "yarn", "test" ]

FROM base as lint

CMD [ "yarn", "lint" ]

FROM base as production

CMD [ "yarn", "start" ]
