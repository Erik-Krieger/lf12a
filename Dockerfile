FROM python:3.13
WORKDIR /usr/local/app

# Copy in the source code
COPY src .
EXPOSE 8000

# Setup an app user so the container doesn't run as the root user
RUN useradd app
USER app

CMD ["python3", "-m", "http.server"]
