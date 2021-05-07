FROM python:3.9.5-slim-buster

LABEL maintainer="https://github.com/jordanengstrom"

RUN mkdir /app
COPY ./boise_crime_blog /app/
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBUG 0

RUN python3 manage.py collectstatic --no-input

# Specify port number
EXPOSE 8000

# Run Django development server
CMD python3 manage.py runserver 0.0.0.0:8000
