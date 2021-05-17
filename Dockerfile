FROM openjdk:8-jre-alpine

ENV APP_NAME=pet-clininc

ENV APP_HOME=/usr/share/${APP_NAME}
ENV APP_LOG=${APP_HOME}/log
ENV APP_CONF=${APP_HOME}/conf
ENV APP_LIB=${APP_HOME}/lib

ENV APP_SLEEP=0 \
    LOG_FOLDER=${APP_LOG}

WORKDIR ${APP_LOG}
WORKDIR ${APP_CONF}
WORKDIR ${APP_LIB}

ADD ./target/spring-petclinic-*.jar ${APP_NAME}-app.jar

WORKDIR ${APP_HOME}

ADD entrypoint.sh entrypoint.sh
RUN chmod 755 entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
