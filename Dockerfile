ARG NODE_VERSION_ARG="lts"

FROM node:${NODE_VERSION_ARG}-alpine AS nbuilder
RUN apk add --update git
WORKDIR /var/www/app/
COPY ./frontend/package*.json /var/www/app/
RUN npm ci
COPY ./frontend/ /var/www/app/
COPY ./.git /var/www/app/.git
RUN COMMIT_SHORT_HASH=$(git rev-list --max-count=1 --abbrev-commit --skip=# HEAD) npm run build

FROM registry.gitlab.beauit.com/common-ci/nginx:stable AS web
LABEL maintainer="Nikolai Apraksin <nickolayanatolievich@gmail.com>"
RUN mkdir -p /opt/nginx-confs
COPY ./frontend/docker/web/config/frontend.nginx.conf /opt/nginx-confs/default.conf.dist
COPY ./frontend/docker/web/robots.txt /var/www/app/public/robots.txt
COPY --from=nbuilder /var/www/app/dist /var/www/app/public
COPY ./frontend/docker/web/docker-command.sh /bin/docker-command.sh
RUN sed -i ':a;N;$!ba;s/\r//g' /bin/docker-command.sh \
    && chmod +x /bin/docker-command.sh
CMD ["/bin/docker-command.sh"]
