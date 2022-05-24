FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app-apipython

COPY ./requirements.txt .

RUN pip install -r requirements.txt

# RUN pip install pipenv
# RUN pip install flask
# RUN pip intall virtualenv flask
# RUN pip install FlaskAPI
# RUN pip install waitress


COPY . .

EXPOSE 8000

CMD [ "python", "API.py" ]
