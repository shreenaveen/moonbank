# [START dockerfile]
FROM python:3.7-slim
RUN pwd
RUN ls -lrt /home
RUN pip3 install -r requirements.txt
CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "main:app"]
# [END dockerfile]
