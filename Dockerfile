#Pull baseimage 
FROM python:3.8

#Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#Set workdir 
WORKDIR /code

#Install the needed dependencies 
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#Copy the project 
COPY . /code/




