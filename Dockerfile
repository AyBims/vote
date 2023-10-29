FROM python:alpine3.17 
WORKDIR /app

# Install our requirements.txt
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Copy our code from the current folder to /app inside the container
ADD . /app

# Make port 80 available for links and/or publish
EXPOSE 80
CMD ["gunicorn", "app:app", "-b", "0.0.0.0:80"]
