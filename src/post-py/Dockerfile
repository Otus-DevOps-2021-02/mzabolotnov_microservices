FROM ubuntu:18.04
#FROM python:3.6.0-alpine
#FROM python:3.8-slim

WORKDIR /app
ADD . /app

# RUN apk --no-cache --update add build-base && \
#     pip install -r /app/requirements.txt && \
#     apk del build-base
RUN apt update -y \
 && apt install -y python3-pip

RUN pip3 install -r requirements.txt

ENV POST_DATABASE_HOST post_db
ENV POST_DATABASE posts

ENTRYPOINT ["python3", "post_app.py"]
