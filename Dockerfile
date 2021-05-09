FROM python:3.6.10-slim-stretch

RUN apt-get update -y \
  && apt-get upgrade -y

# install python library
COPY requirements.txt .
RUN pip3 install --upgrade pip && \
  pip3 install --no-cache-dir -r requirements.txt \
  && rm -rf ~/.cache/pip

WORKDIR /home/work/
