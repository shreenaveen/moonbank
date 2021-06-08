# [START dockerfile]
FROM python:3.7-slim
RUN pip install -r requirements.txt
CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "main:app"]
# [END dockerfile]
