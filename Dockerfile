
FROM andrewosh/binder-base

MAINTAINER Matt Johnson <mossmatters@gmail.com>

USER root

RUN apt-get install -y xvfb

# Set display variable
RUN export DISPLAY=:99.0

# Start xvfb
RUN sh -e /etc/init.d/xvfb start
RUN sleep 2
 
RUN pip install -r requirements.txt