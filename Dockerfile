ARG NODE_VERSION_ARG="lts"

FROM node:${NODE_VERSION_ARG}-alpine AS builder

ENV APP_VERSION=\$APP_VERSION

WORKDIR /src

# Copy just these two files and install dependencies. If these files have not
# changed, Docker should have all dependencies cached.
COPY package.json package-lock.json ./
RUN npm ci

COPY . ./
RUN npm run build

FROM registry.gitlab.beauit.com/common-ci/nginx:stable AS web
LABEL maintainer="Nikolai Apraksin <nickolayanatolievich@gmail.com>"

WORKDIR /var/www/app

COPY --from=builder /src/dist ./public
COPY --from=builder /src/docker/web/config/landing.nginx.conf ./
COPY --from=builder /src/docker/web/robots.txt ./public

COPY --from=builder /src/docker/web/docker-command.sh /bin/

RUN sed -i ':a;N;$!ba;s/\r//g' /bin/docker-command.sh && chmod +x /bin/docker-command.sh
CMD [ "/bin/docker-command.sh" ]
