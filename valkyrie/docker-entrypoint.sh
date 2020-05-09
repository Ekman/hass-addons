#!/bin/sh

CRON_PATTERN=$(cat ${CONFIG_PATH} | jq --raw-output .cron_pattern)

# Install the new crontab
echo "${CRON_PATTERN} node ${APP_PATH} ${CONFIG_PATH}" | crontab -u ${APP_USER} -

# See: https://stackoverflow.com/questions/37458287/how-to-run-a-cron-job-inside-a-docker-container
# Start crond with log level 6 in foreground, output to stderr.
# I found the log level by trial and error.
crond -f -d 8
