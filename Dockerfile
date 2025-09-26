FROM python:3.13-slim

RUN python3 -m pip install -U platformio

RUN apt-get update && apt install -y git cmake autoconf automake libtool build-essential gcc valgrind lcov && apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/
