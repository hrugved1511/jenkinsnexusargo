#!/bin/sh
echo "The application will start in ${APP_SLEEP}s..." && sleep ${APP_SLEEP}
java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar "${APP_LIB}/${APP_NAME}-app.jar" "$@"

