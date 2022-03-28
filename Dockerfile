ARG NODE_VERSION_ARG="lts"

FROM node:${NODE_VERSION_ARG}-alpine AS nbuilder
RUN apk add --update git
WORKDIR /var/www/app/
COPY ./package*.json /var/www/app/
RUN npm ci
COPY ./ /var/www/app/
COPY ./.git /var/www/app/.git
RUN COMMIT_SHORT_HASH=$(git rev-list --max-count=1 --abbrev-commit --skip=# HEAD) npm run build

FROM registry.gitlab.beauit.com/common-ci/nginx:stable AS web
LABEL maintainer="Nikolai Apraksin <nickolayanatolievich@gmail.com>"
RUN mkdir -p /opt/nginx-confs
COPY ./docker/web/config/web.nginx.conf /opt/nginx-confs/default.conf.dist
COPY ./docker/web/robots.txt /var/www/app/public/robots.txt
COPY --from=nbuilder /var/www/app/dist /var/www/app/public
COPY ./docker/web/docker-command.sh /bin/docker-command.sh
RUN sed -i ':a;N;$!ba;s/\r//g' /bin/docker-command.sh \
    && chmod +x /bin/docker-command.sh
CMD ["/bin/docker-command.sh"]
