FROM python:3.13-alpine

WORKDIR /app
COPY index.html .

USER nobody
EXPOSE 8000
CMD ["python", "-m", "http.server", "8000", "--bind", "0.0.0.0"]