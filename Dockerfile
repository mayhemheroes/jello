FROM python:3.11-slim

RUN apt-get update && apt-get install -y clang && rm -rf /var/lib/apt/lists/*
RUN pip3 install atheris

COPY . /jello
WORKDIR /jello
RUN python3 -m pip install . && chmod +x fuzz/fuzz_json_schema_generator.py
WORKDIR /jello/fuzz
