# Dockerfile for scraping in python

This is everything you need to create your own image for scraping


To download the image run:
```
docker pull knazin/scraping
```

[Link to dockerhub](https://hub.docker.com/r/knazin/scraping)

## This image contains

* Python libs
    * requests
    * requests_html
    * lxml
    * scrapy
    * selenium
* Python IDE - Jupyter Lab
* Chrome browser
* Chromedriver (for selenium)

With this setup you should create any scraper you need. 
