# base container
FROM python:3.6-slim

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["sh", "entrypoint.sh"]

