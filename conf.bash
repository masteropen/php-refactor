#!/bin/bash

##### general #####
PROJECT_DIR="/path/to/project"
# shellcheck disable=SC2034
TARGET_DIRS=("src")
LOG_DIR=".fixers"

##### PHP CS FIXER #####

# shellcheck disable=SC2034
RULES="@PSR1,@PSR2,@Symfony,@PhpCsFixer"
# shellcheck disable=SC2034
PHP_CS_FIXER_LOG_FILE="php-cs-fixer.log"

##### PHP CODE SNIFFER #####

# shellcheck disable=SC2034
PHPCS_LOG_FILE=("phpcs.log" "phpcbf.log")

##### PHPSTAN #####

# shellcheck disable=SC2034
PHPSTAN_MAX_LEVEL=9
# shellcheck disable=SC2034
PHPSTAN_LOG_FILE="phpstan.log"
# shellcheck disable=SC2034
PHPSTAN_LOG_FORMAT="table"

# preprocessing
cd $PROJECT_DIR || exit
mkdir -p $LOG_DIR
