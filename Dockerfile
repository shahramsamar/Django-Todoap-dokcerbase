FROM python:3.8-slim-buster

LABEL maintainer="Shahramsamar2010@gmail.com"

# show event 
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# directory
WORKDIR /app

# we need install app for image
COPY requirements.txt /app/

# install requirements.txt 
RUN pip3 install --upgrade pip 
RUN pip3 install  -r requirements.txt

# copy directory to image
COPY ./core /app/