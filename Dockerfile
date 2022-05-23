FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app-apipython

RUN pip install pipenv
RUN pip install flask
RUN pip install waitress
RUN pip install FlaskAPI

COPY . .

EXPOSE 8000

CMD [ "python", "API.py" ]