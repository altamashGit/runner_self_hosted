FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt && rm -rf ~/.cache/pip

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
