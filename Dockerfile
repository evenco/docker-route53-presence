FROM stackbrew/ubuntu:vivid

RUN apt-get update -qq && apt-get install -y python-boto python-requests

ADD bin/route53-presence /bin/route53-presence

ENTRYPOINT ["/bin/route53-presence"]
CMD ["-h"]
