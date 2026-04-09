docker run --gpus all -it --rm --memory=110gb --shm-size=15gb \
 -u $(id -u):$(id -g) \
 -v ~/fujimoto:/home/cygnus/fujimoto \
 cuda-python:12.8.1-3.10 bash
