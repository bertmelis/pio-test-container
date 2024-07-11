FROM python:3.11.0-slim

RUN python3 -m pip install -U platformio

RUN apt-get update && apt install -y git && apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install -U platformio
RUN python3 -V
