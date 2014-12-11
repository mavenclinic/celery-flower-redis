FROM python:slim
MAINTAINER Zachary Zaro zach@mavenclinic.com

RUN apt-get -y update && apt-get -y install python-dev python-pip
RUN pip install flower redis

# For the web interface, this is the default port in the docs
EXPOSE 5555

ENTRYPOINT ["flower", "--port=5555"]
