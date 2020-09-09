#!/bin/bash

source ./conf.bash

phpcs "$TARGET_DIRS" > "$LOG_DIR/${PHPCS_LOG_FILE[0]}"
phpcbf "$TARGET_DIRS" > "$LOG_DIR/${PHPCS_LOG_FILE[1]}"
