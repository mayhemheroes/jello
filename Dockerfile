FROM python:3.10-bullseye
RUN pip3 install atheris

COPY . /jello
WORKDIR /jello
RUN python3 -m pip install . && chmod +x fuzz/fuzz.py
WORKDIR /jello/fuzz