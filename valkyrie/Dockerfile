ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG=C.UTF-8 \
    CONFIG_PATH="/data/options.json" \
    APP_USER="app" \
    APP_PATH="/home/app/app.js" \
    APP_ENV="production" \
    NODE_ENV="production"

# Install required dependencies
RUN apk add --no-cache --update \
    jq nodejs

# Add a user for the application so we don't run
# it using privileged root user
RUN adduser ${APP_USER} --disabled-password

# Add the application to the container
ADD app.js ${APP_PATH}

# Lets go!
ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
CMD ["/docker-entrypoint.sh"]