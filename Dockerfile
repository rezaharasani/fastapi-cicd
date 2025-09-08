FROM python:3.11.7-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app /app
EXPOSE 8000

CMD [ "fastapi", "dev", "app/main.py", "--host", "0.0.0.0", "--port", "8000" ]
