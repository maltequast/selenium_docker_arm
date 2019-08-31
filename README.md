Made for Raspberry Pi:

Setup:

- Python3.5
 - Selenium==3.13.0
 - pivirtualdisplay:latest
 - Geckodriver= 0.23
 - Firefox-esr 60.8.0

creating an image:

docker build -t selenium_docker .

Creates and run container:
docker run --rm  -it selenium_docker

starts the interactive mode for better testing
no need for priveleged or detached mode.
entrypoint defined, but can be overwritten with shared volume files
