FROM python:3.7.4

ENV PYTHONUNBUFFERED True

ENV APP_HOME /
WORKDIR $APP_HOME
COPY . ./

RUN . venv/bin/activate

EXPOSE 5000

CMD [ "python", "manage.py", "runserver" ]
