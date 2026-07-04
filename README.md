# Hausaufgabe: GitHub Actions Secrets, Variables und Environment Variables

Dieses Projekt gehört zum Word Aufgabenblatt.

Die Shell Skripte sind bereits vorbereitet.
Die GitHub Actions Workflow Dateien müssen selbst erstellt werden.

## Ziel

Du sollst drei Pipelines erstellen:

1. Pipeline mit normalen Environment Variables
2. Pipeline mit GitHub Repository Variables
3. Pipeline mit GitHub Secrets

## Projektstruktur

```text
github-actions-hausaufgabe-secrets-variablen-env/
├── .github/
│   └── workflows/
│       └── .gitkeep
├── docs/
│   └── begriffe.md
├── scripts/
│   ├── 01_env_report.sh
│   ├── 02_variables_report.sh
│   └── 03_secret_check.sh
└── README.md
```

## Lokal testen

```bash
chmod +x scripts/*.sh

COURSE_NAME="GitHub Actions" ENVIRONMENT_NAME="Lokal" STEP_MESSAGE="lokaler Test" bash scripts/01_env_report.sh

APP_NAME="Demo App" TARGET_ENV="Test" APP_VERSION="1.0.0" bash scripts/02_variables_report.sh

DEMO_API_TOKEN="test-token-123" bash scripts/03_secret_check.sh
```

## Wichtig

Die drei Workflow Dateien sollen im Ordner `.github/workflows/` erstellt werden.

Die genauen Aufgaben stehen im Word Aufgabenblatt.
