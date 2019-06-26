FROM python:2-stretch
RUN mkdir -p /code
WORKDIR /code
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE composeexample.settings
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
