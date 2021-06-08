# [START dockerfile]
FROM python:3.7-slim
COPY . /opt/app
WORKDIR /opt/app
RUN pwd
RUN ls -lrt 
RUN pip3 install -r requirements.txt
CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "main:app"]
# [END dockerfile]
