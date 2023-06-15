FROM ubuntu:latest
LABEL org.opencontainers.image.authors="BSA"
RUN apt-get update -qy
RUN apt-get install -qy python3.10 python3-pip python3.10-dev
COPY /app /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python3","main.py"]