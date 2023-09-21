# Use an official Python runtime as a base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the local main.py file to the container at /app
COPY . /app

# Install Flask and pymongo (and any other dependencies) using pip
RUN pip install flask pymongo

EXPOSE 2101

# Define the command to run when the container starts
CMD ["python", "main.py"]

