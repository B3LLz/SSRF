FROM python:3.8

MAINTAINER B3llz <bellship99@naver.com>

LABEL description="Web Application for SSRF Test"

RUN python -m pip install flask
RUN python -m pip install requests

ADD api-server.tar.gz /app
ADD internal-server.tar.gz /server
COPY entry.sh /entry.sh

RUN chmod u+x /entry.sh

EXPOSE 5000

ENTRYPOINT ["/entry.sh"]