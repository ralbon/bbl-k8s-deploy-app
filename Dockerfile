# Use an official Python runtime as a parent image
FROM python:3.7-alpine

# Add application and its requirements
RUN mkdir /app
COPY app/app.py /app
COPY app/config.py /app
COPY app/requirements.txt /app

# Change working directory
WORKDIR /app

# Install requirements
RUN pip install -r requirements.txt

# Launch application
ENTRYPOINT ["gunicorn"]
CMD ["--config", "config.py", "app:app"]
