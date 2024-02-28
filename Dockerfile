FROM registry.access.redhat.com/ubi8/ubi as development
ARG APP_ROOT_CONTAINER=/usr/src/app/
WORKDIR ${APP_ROOT_CONTAINER}/

COPY scripts/install_dependencies.sh ${APP_ROOT_CONTAINER}/scripts/
RUN scripts/install_dependencies.sh

COPY . ${APP_ROOT_CONTAINER}

CMD scripts/start_app.sh

FROM development as builder
RUN scripts/build_app.sh
