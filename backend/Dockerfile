# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y wget vim


# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the API port
EXPOSE 8000

# Command to run the application
CMD sh -c 'uv run uvicorn main:app --reload --host 0.0.0.0 --port 8000'
