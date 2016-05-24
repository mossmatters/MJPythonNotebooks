
FROM andrewosh/binder-base

MAINTAINER Matt Johnson <mossmatters@gmail.com>

USER root

# Set display variable
RUN export DISPLAY=:99.0

# Start xvfb
RUN sh -e /etc/init.d/xvfb start
RUN sleep 2
 
 