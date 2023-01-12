# Use an official Python runtime as a parent image
FROM python:3-alpine

# Set the working directory to /app
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

ARG PORT
ENV FLET_SERVER_PORT=$PORT

EXPOSE $PORT
COPY flet.sh /root/.flet/bin/flet-0.3.2/flet/flet
RUN chmod +x /root/.flet/bin/flet-0.3.2/flet/flet

CMD ["sh", "-c", "flet run app.py -p $FLET_SERVER_PORT -r --hidden"]
# CMD ["sleep", "infinity"]