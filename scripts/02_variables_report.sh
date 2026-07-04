#!/usr/bin/env bash

set -e

mkdir -p output

if [ -z "${APP_NAME:-}" ]; then
  echo "Fehler: APP_NAME ist nicht gesetzt."
  exit 1
fi

if [ -z "${TARGET_ENV:-}" ]; then
  echo "Fehler: TARGET_ENV ist nicht gesetzt."
  exit 1
fi

if [ -z "${APP_VERSION:-}" ]; then
  echo "Fehler: APP_VERSION ist nicht gesetzt."
  exit 1
fi

echo "Repository Variables Demo"
echo "App Name: $APP_NAME"
echo "Zielumgebung: $TARGET_ENV"
echo "Version: $APP_VERSION"

cat > output/variables-report.txt <<EOF
Repository Variables Report

APP_NAME=$APP_NAME
TARGET_ENV=$TARGET_ENV
APP_VERSION=$APP_VERSION

Diese Werte kommen aus GitHub Repository Variables.
EOF

echo "Report erstellt: output/variables-report.txt"
