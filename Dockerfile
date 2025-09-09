# Use the base image from Artifact Registry (not Docker Hub)
FROM us-central1-docker.pkg.dev/saikiran-gcp/my-docker-repo/python:3.9-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Install dependencies
RUN pip install --no-cache-dir flask

# Start the app
CMD ["python", "app.py"]
