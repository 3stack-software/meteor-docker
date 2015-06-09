FROM debian:jessie

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh

ENV PORT 8080
EXPOSE 8080

WORKDIR /built_app
ENTRYPOINT node main.js

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
