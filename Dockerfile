FROM python:3.8-alpine

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.17.1'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
