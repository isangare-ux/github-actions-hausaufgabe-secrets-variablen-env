# Begriffe

## Environment Variable

Eine Environment Variable ist ein Wert, der während eines Jobs oder Steps verfügbar ist.

Beispiel:

```yaml
env:
  COURSE_NAME: "GitHub Actions"
```

Im Bash Skript kann man den Wert so lesen:

```bash
echo "$COURSE_NAME"
```

## GitHub Repository Variable

Eine Repository Variable wird in GitHub gespeichert und kann in Workflows genutzt werden.

Beispiel:

```yaml
APP_NAME: ${{ vars.APP_NAME }}
```

Repository Variables sind für nicht geheime Werte gedacht.

## GitHub Secret

Ein Secret ist für vertrauliche Werte gedacht, zum Beispiel API Keys, Passwörter oder Tokens.

Beispiel:

```yaml
DEMO_API_TOKEN: ${{ secrets.DEMO_API_TOKEN }}
```

Ein Secret darf nicht direkt in der YAML Datei stehen.
