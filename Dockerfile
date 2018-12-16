FROM python:3.6

WORKDIR /

COPY requirements.txt /
# https://chromedriver.storage.googleapis.com/2.45/chromedriver_linux64.zip
COPY chromedriver /

RUN apt-get -y update 

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Install Google Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt-get install -y fonts-liberation libappindicator3-1 libasound2 libatk-bridge2.0-0 libatspi2.0-0 libgtk-3-0 libnspr4 libnss3 libx11-xcb1 libxtst6 lsb-release xdg-utils && \
    dpkg -i google-chrome-stable_current_amd64.deb

EXPOSE 8888