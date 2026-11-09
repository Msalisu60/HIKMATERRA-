FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
WORKDIR /app
COPY . /app
CMD ["echo", "Jenkins CI/CD Pipeline Running Successfully"]
