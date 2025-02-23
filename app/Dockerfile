# Use a lightweight Python image
FROM python:3.9-slim

# Set a non-root user
RUN useradd -m appuser

# Set the working directory inside the container
WORKDIR /app

# Copy application files
COPY main.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure non-root user has ownership of files
RUN chown -R appuser:appuser /app

# Switch to non-root user
USER appuser

# Expose the application port
EXPOSE 5000

# Run the application
CMD ["python", "main.py"]
