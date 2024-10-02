# Base image
FROM python:3.10

# set a working directory
WORKDIR /app

# copy depencenty file
COPY src/requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# Install production-ready server (e.g., gunicorn)
RUN pip install gunicorn

COPY src/server.py .

# expose port
EXPOSE 8000

#RUN flask app
# Use Gunicorn to run the app in production
CMD ["gunicorn", "-b", "0.0.0.0:8000", "server:app"]

