# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# Set entry point
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
