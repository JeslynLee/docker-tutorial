# Use an official Python runtime as a parent image
FROM python:3
# Set the working directory
WORKDIR /app
# Add Python script to the Dockerfile
ADD app.py
# Install any needed packages
RUN pip install –trusted-host pypi.python.org –r requirements.txt
# Run app.py when the container launches
CMD [“python”, “app.py”]
