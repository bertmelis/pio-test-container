FROM python:3.11.0-slim

RUN python3 -m pip install -U platformio

RUN apt-get update && apt install -y git build-essential gcc valgrind && apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
