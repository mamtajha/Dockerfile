FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install vim nginx iputils-ping -y

ENV DocumentRoot="/usr/share/nginx/html"
RUN echo "Hello docker!"
CMD ["sh"]
CMD ["/bin/ping google.com"]
#CMD ["google.com"]
#ENTRYPOINT ["/bin/ping", "-c", "3"]
#ENTRYPOINT ["/bin/sh"]
EXPOSE 80
