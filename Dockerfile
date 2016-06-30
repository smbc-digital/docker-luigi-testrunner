FROM stockport/luigi-taskrunner:latest

MAINTAINER  Stockport <info@stockport.gov.uk>

RUN mkdir -p /luigi/tests
ADD ./luigi/tests/* /luigi/tests
VOLUME /luigi/tests

RUN source /luigi/.pyenv/bin/activate \
    && pip install nose

WORKDIR /tests

ENTRYPOINT ["bash", "nosetests tests"]
