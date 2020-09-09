#!/bin/bash

source ./conf.bash

for ((i=0; i<"$PHPSTAN_MAX_LEVEL"; i++))
do
  ./vendor/bin/phpstan analyse "$TARGET_DIRS" --level=$i --error-format="$PHPSTAN_LOG_FORMAT" > "$LOG_DIR/$PHPSTAN_LOG_FILE"
done
