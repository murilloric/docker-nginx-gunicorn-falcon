#install nginx
FROM python:2.7.8

MAINTAINER Ric Murillo <murilloric@gmail.com>

# install nginx and supervisor

RUN apt-get update && \
    apt-get install -y nginx supervisor

COPY . /project

WORKDIR /project

RUN pip install -r requirements.txt

# Set up configuration files
ADD /docker_config/supervisor_app.conf /etc/supervisor/supervisord.conf
ADD /docker_config/nginx_app.conf /etc/nginx/nginx.conf


EXPOSE 80

CMD ["supervisord", "-n"]

