#export FIREFLY_URL=http://localhost:8080/firefly

docker run --gpus all -it --rm --shm-size=15g \
  -v ~/fujimoto:/home/cygnus/fujimoto \
  -v ~/.jupyter:/home/cygnus/.jupyter \
  -p 8888:8888 \
  pt-lab2 \
  jupyter lab --ip=0.0.0.0
# jupyter lab --ip=0.0.0.0 --port 9888
