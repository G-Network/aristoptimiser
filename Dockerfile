FROM ubuntu:18.04
RUN apt-get update -y
#RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y python3.6 python3-pip
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
#ENTRYPOINT ["python3"]
#CMD ["python3", "app.py"]  #worked

CMD ["python3", "aristoptimiser/web_optimiser_configuration.py"]
