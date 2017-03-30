FROM ubuntu:latest
MAINTAINER Will Cecil "will@willcecil.co.uk"
RUN apt-get update -qq
RUN apt-get install -y python3-dev python3-crypto python3-pip python3-pil
RUN apt-get install -y libpq-dev libjpeg-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
