FROM python:3.9-slim-buster as python-producer

RUN mkdir /app

COPY /app /app
COPY pyproject.toml /app

WORKDIR /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

RUN pip install --upgrade pip poetry
RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

CMD ["python", "main.py", "--host=0.0.0.0"]