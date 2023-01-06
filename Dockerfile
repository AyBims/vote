FROM python:alpine3.17 
WORKDIR /
COPY requirements.txt ./
COPY . .
RUN pip install -r requirements.txt
EXPOSE 80
CMD gunicorn app:app -b 0.0.0.0:80
