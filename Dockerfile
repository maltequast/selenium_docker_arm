FROM arm32v7/python:3.5-slim

RUN apt-get update && apt-get install firefox-esr xvfb -y && apt-get install -y wget

RUN pip install selenium==3.13.0
RUN pip install pytest
RUN pip install xvfbwrapper
RUN pip install pyvirtualdisplay

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.23.0/geckodriver-v0.23.0-arm7hf.tar.gz
RUN tar -xf geckodriver-v0.23.0-arm7hf.tar.gz
RUN rm geckodriver-v0.23.0-arm7hf.tar.gz
RUN chmod a+x geckodriver
RUN mv geckodriver /usr/local/bin/

ENV APP_HOME /usr/src/app
WORKDIR /$APP_HOME

COPY . $APP_HOME/

ENTRYPOINT ["python","test.py"]
