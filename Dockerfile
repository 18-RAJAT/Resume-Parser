#SELECT BASE IMG -alpine3.10
# Use an official Python runtime as the base image
FROM python:3.11

# Set the working directory inside the container
# WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY . /app

ADD app.py .    

# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the application will listen on (if applicable)
# EXPOSE 8000

# Specify the command to run your application
CMD ["python", "app.py"]

# Build the image
# docker build -t resume-parser .
# Run the container
# docker run -d -p 5000:5000 resume-parser
# Check the app
# http://127.0.0.1:5000/
# Hello World!