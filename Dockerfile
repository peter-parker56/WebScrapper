# Use an official Python runtime as the base image
FROM python:3.11-slim-buster

# Create and set working directory
WORKDIR /app

# Install Python dependencies first to leverage Docker cache
COPY requirements.txt .
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r requirements.txt

# Copy the rest of the application
COPY . .

# Set the command to run your application
CMD ["python3", "main.py"]
