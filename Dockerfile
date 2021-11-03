# set base image (host OS)
FROM python:3.8

RUN pip install --upgrade pip
# set the working directory in the container
RUN apt-get update

WORKDIR /code
# copy the content of the local src directory to the working directory
COPY src/ .

# command to run on container start
CMD [ "python3", "./mathlib.py" ]
