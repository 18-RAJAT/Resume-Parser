#SELECT BASE IMG -alpine3.10
FROM python:3.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE $PORT
#BIND LOCAL IP ADDRESS TO PORT
# Define the command to run your application using gunicorn
CMD ["gunicorn", "--workers=2", "--bind", "0.0.0.0:8080", "app:app"]