FROM python:3.11-alpine

#ENV PYTHONDONTWRITEBYTECODE 1
#ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

EXPOSE 8000

RUN adduser --disabled-password service-user
USER service-user

#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]