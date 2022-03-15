FROM python:3.7.4

ENV PYTHONUNBUFFERED True
ENV PORT 5000

ENV APP_HOME /
WORKDIR $APP_HOME
COPY . ./

RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements/dev.txt

CMD [ "python", "manage.py", "runserver", "--port=8080" ]
