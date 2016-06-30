FROM stockport/luigi-taskrunner:latest

MAINTAINER  Stockport <info@stockport.gov.uk>

RUN mkdir -p /luigi/tests
ADD ./tests/sample_test.py /luigi/tests
VOLUME /luigi/tests

RUN bash -c "pyenv /luigi/.pyenv \
    && source /luigi/.pyenv/bin/activate \
    && pip install nose"

ENTRYPOINT ["bash", "nosetests tests"]
