FROM python:3.6-slim
MAINTAINER Venus Chau "venuschau406@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["python","app.py"]
EXPOSE 5000

#FROM python:3.4-alpine
#MAINTAINER Venus Chau "venuschau406@gmail.com"
#ADD . /code
#WORKDIR /code
#RUN pip install -r requirements.txt
#CMD ["python", "app.py"]

#EXPOSE 5000