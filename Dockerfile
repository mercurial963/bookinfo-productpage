FROM python:3.8-slim-buster

WORKDIR /app

COPY . /app
RUN apt-get update && apt-get -y install gcc
RUN pip3 install -r requirements.txt

CMD [ "python3","productpage.py", "9080"]