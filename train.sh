docker build -t joe:latest .  
nvidia-docker run -p 8888:8888 -v $1:/tf_files joe:latest
