FROM tensorflow/tensorflow:latest-gpu

MAINTAINER Jerome WAX "xblaster@lo2k.net"

WORKDIR /tensorflow

ADD src .
COPY src/retrain.py tensorflow/examples/image_retraining/retrain.py

CMD cd /tensorflow && ./train.sh
