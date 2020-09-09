#!/bin/bash

source ./conf.bash

php-cs-fixer fix "$TARGET_DIRS" --rules="$RULES" > "$LOG_DIR/$PHP_CS_FIXER_LOG_FILE"
