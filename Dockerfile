FROM python:3.9.5-slim-buster
LABEL maintainer="https://github.com/jordanengstrom"
WORKDIR /app/
COPY . /app/
RUN cd boise_crime_blog && pip install -r requirements.txt
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DEBUG 1
# RUN python3 manage.py collectstatic --no-input
EXPOSE 8000
