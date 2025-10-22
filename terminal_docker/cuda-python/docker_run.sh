docker run --gpus all -it --rm --memory=110gb --shm-size=15gb \
 -v ~/fujimoto:/home/cygnus/fujimoto \
 cuda-python:12.8.1-3.10 bash
