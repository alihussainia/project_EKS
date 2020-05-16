FROM python:3.7-stretch

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080", "main:APP"]

EXPOSE 8080