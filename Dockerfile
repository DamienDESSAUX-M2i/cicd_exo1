FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app_satisfaction.py .

EXPOSE 5001

ENTRYPOINT [ "python", "app.satisfaction.py" ]