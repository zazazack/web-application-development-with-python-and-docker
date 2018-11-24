# Dockerfile
FROM python:alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./app .

ENV FLASK_APP app.py

EXPOSE 5000

CMD ["python", "app.py"]
