
FROM andrewosh/binder-base

MAINTAINER Matt Johnson <mossmatters@gmail.com>

USER root

RUN apt-get update
RUN apt-get install -y xvfb

RUN Xvfb :1 -screen 0 1600x1200x16 &
RUN export DISPLAY=:99.0

USER main
 
RUN pip install ete3
