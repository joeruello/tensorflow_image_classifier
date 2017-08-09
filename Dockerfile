FROM tensorflow/tensorflow:latest-gpu

MAINTAINER Jerome WAX "xblaster@lo2k.net"

WORKDIR /tensorflow

ADD src .

RUN git pull
CMD cd /tensorflow && ./train.sh
