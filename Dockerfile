FROM python:latest

WORKDIR /home

COPY . .

RUN python -m pip install -r requirements.txt

EXPOSE 8000

RUN django-admin startproject anil .

CMD [ "python","manage.py","runserver","0.0.0.0:8000" ]

