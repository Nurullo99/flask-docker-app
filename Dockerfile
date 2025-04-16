# Base image
FROM python:3.13-slim

# Working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the app
COPY . .

# Run the app
CMD ["python", "app.py"]
