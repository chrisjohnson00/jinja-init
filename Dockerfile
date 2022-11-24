FROM python:3.11-slim

ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt
ADD run.py /run.py

USER 1001
ENTRYPOINT ["python", "/run.py"]
