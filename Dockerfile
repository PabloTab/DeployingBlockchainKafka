FROM python:alpine3.7
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
CMD ["python","kafka_blockchain.py","0"]