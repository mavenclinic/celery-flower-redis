FROM python:slim
MAINTAINER Zachary Zaro zach@mavenclinic.com

RUN pip install flower redis

# For the web interface, this is the default port in the docs
EXPOSE 5555
ENTRYPOINT ["flower", "--port=5555"]
