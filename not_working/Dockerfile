# Use an official Python runtime as a parent image
FROM python:3-alpine

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./app .
ARG PORT
ENV FLET_SERVER_PORT=$PORT

EXPOSE $PORT

CMD ["sh", "-c", "flet run app/app.py -p $PORT -r --hidden"]