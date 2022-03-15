FROM python:3.7.4

ENV PYTHONUNBUFFERED True
ENV PORT 8080

ENV APP_HOME /
WORKDIR $APP_HOME
COPY . ./

EXPOSE 8080
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install -r requirements/dev.txt

CMD [ "python", "manage.py", "runserver", "--host=0.0.0.0", "--port=8080" ]
