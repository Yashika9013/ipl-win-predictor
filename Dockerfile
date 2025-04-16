# Use official Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy app code into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask runs on (default is 5000)
EXPOSE 5000

# Command to run the app
CMD ["python", "strtServer.py"]
