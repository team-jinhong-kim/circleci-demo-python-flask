FROM python:3.7.4

ENV PYTHONUNBUFFERED True

ENV APP_HOME /
WORKDIR $APP_HOME
COPY . ./

RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements/dev.txt

EXPOSE 5000

CMD [ "python", "manage.py", "runserver" ]
