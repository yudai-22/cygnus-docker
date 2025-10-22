# FROM nvcr.io/nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04
# FROM nvcr.io/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu20.04
# FROM nvcr.io/nvidia/cuda:12.8.1-devel-ubuntu22.04
FROM nvcr.io/nvidia/cuda:12.8.1-cudnn-devel-ubuntu22.04

ARG DOCKER_UID=1000
ARG DOCKER_USER=cygnus
ARG DOCKER_PASSWORD=cygnus
ARG DEBIAN_FRONTEND=noninteractive

ENV PATH=/usr/local/nvm/versions/node/v15.2.1/bin:$PATH
ENV PATH=/home/cygnus/.local/bin:$PATH
ENV TZ=Asia/Tokyo

RUN  useradd -m -k /etc/skel --uid ${DOCKER_UID} \
    --groups sudo ${DOCKER_USER} \
  && echo ${DOCKER_USER}:${DOCKER_PASSWORD} | chpasswd \
  && apt-get update && apt-get upgrade -y \
  && apt-get install -y python3-pip libglib2.0-0 libsm6 libxrender1 libxext6 git \
  && apt-get install -y libgl1-mesa-dev libgtk2.0-dev nodejs npm\
  && ln -s /usr/bin/python3 /usr/bin/python \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip install -U pip \
  && pip install torch torchvision torchaudio \
  && pip install ipython scikit-learn matplotlib pillow pandas  \
  && pip install astroquery aplpy astropy photutils firefly-client spectral_cube astrodendro pvextractor \
  && pip install torchsummary torchviz \
  && pip install reproject scikit-image opencv-python faiss_gpu seaborn sympy \
  && pip install tqdm ipywidgets japanize_matplotlib \
  && pip install seaborn natsort \
  && pip install webdataset optuna wandb npy-append-array numpy==1.24.2\
  && pip install firefly-client nodejs ipywidgets \
  && pip install jupyterlab jupyter-firefly-extensions ipympl
#  && pip install black isort \
#  && pip install jupyterlab_code_formatter 
# python-language-server[all] jupyter-lsp

  

USER ${DOCKER_USER}
WORKDIR /home/cygnus

RUN mkdir -p ~/.jupyter \
  ; mkdir -p ~/.local/share/jupyter

