#!/usr/bin/env bash

set -e

mkdir -p output

if [ -z "${DEMO_API_TOKEN:-}" ]; then
  echo "Fehler: DEMO_API_TOKEN ist nicht gesetzt."
  echo "Lege das Secret in GitHub unter Settings, Secrets and variables, Actions, Secrets an."
  exit 1
fi

token_length=${#DEMO_API_TOKEN}

echo "Secret Demo"
echo "Das Secret DEMO_API_TOKEN ist gesetzt."
echo "Länge des Secrets: $token_length Zeichen"
echo "Das Secret wird nicht ausgegeben."

cat > output/secret-report.txt <<EOF
Secrets Report

DEMO_API_TOKEN ist gesetzt.
Länge des Secrets: $token_length Zeichen.

Das Secret wurde bewusst nicht in diese Datei geschrieben.
EOF

echo "Report erstellt: output/secret-report.txt"
