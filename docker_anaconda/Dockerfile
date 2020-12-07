FROM continuumio/anaconda3

ARG PKGS="numpy \
    pandas \
    matplotlib \
    seaborn \
    jupyterlab"

RUN apt update && \
    apt install -y vim && \
    useradd -m bryce -u 1500 -s /bin/bash 

USER bryce
RUN conda create --name bryce_py38 python=3.8 && \
    echo "conda activate bryce_py38" >> ~/.bashrc && \
    conda activate bryce_py38 && \
    conda install -c conda-forge ${PKGS} 

EXPOSE 8888
