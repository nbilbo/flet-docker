FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLET_SERVER_PORT=8080

EXPOSE 8080

CMD ["python", "./main.py"]
