#1/bin/bash

cd /home/ubuntu/tensorflow_image_classifier

##docker build -t joe:latest . > /dev/null
nvidia-docker run -i -v $1:/tf_files -v $2:/img/guess.jpg  --entrypoint=/usr/bin/python joe:latest label_image.py /img/guess.jpg > temp

cat temp | grep score

