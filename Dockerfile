# Basis Image
FROM python:3.13

# Das Aktuelle Verzeichnis ändern.
WORKDIR /usr/local/app

# Den Inhalt des "src" in den Contaier kopieren
COPY src .

# Port freigeben.
EXPOSE 8000

# App Benutzer anlegen, um nicht als root zu laufen
RUN useradd app

# Auf dem app Benutzer wechseln
USER app

# Anwendung im Container starten
CMD ["python3", "-m", "http.server"]
