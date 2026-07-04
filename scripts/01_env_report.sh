#!/usr/bin/env bash

set -e

mkdir -p output

echo "Environment Variables Demo"
echo "Kurs: ${COURSE_NAME:-nicht gesetzt}"
echo "Umgebung: ${ENVIRONMENT_NAME:-nicht gesetzt}"
echo "Nachricht: ${STEP_MESSAGE:-nicht gesetzt}"

#Die Datei output/env-report.txt wird erstellt oder überschrieben.
cat > output/env-report.txt <<EOF
Environment Variables Report

COURSE_NAME=${COURSE_NAME:-nicht gesetzt}
ENVIRONMENT_NAME=${ENVIRONMENT_NAME:-nicht gesetzt}
STEP_MESSAGE=${STEP_MESSAGE:-nicht gesetzt}

Diese Werte wurden über env an das Bash Skript übergeben.
EOF

echo "Report erstellt: output/env-report.txt"
