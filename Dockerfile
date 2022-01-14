FROM python:3.10.1-slim-bullseye AS base

RUN useradd -ms /bin/bash vscode

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
