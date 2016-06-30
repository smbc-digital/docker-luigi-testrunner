FROM stockport/luigi-taskrunner:latest

MAINTAINER  Stockport <info@stockport.gov.uk>

RUN mkdir /luigi/

RUN bash -c "source /luigi/.pyenv/bin/activate \
    && pip install nose pyhamcrest"

ADD run.sh /luigi/

ENTRYPOINT ["bash", "/luigi/run.sh"]
