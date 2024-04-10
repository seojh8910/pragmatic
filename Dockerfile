FROM python:3.9.0

WORKDIR /home/

RUN echo "testing123123"

RUN git clone https://github.com/seojh8910/pragmatic.git

WORKDIR /home/pragmatic/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

RUN python manage.py migrate

EXPOSE 8000

CMD ['bash', '-c', 'python manage.py collectstatic --noinput && python manage.py migrate --settings=progmatic.settings.deploy && gunicorn pragmatic.wsgi --env DJANGO_SETTINGS_MODULE=pragmatic.settings.deploy --bind 0.0.0.0:8000']