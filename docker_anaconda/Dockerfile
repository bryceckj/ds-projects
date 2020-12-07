FROM continuumio/anaconda3

ENV DEBIAN_FRONTEND=noninteractive \
    CONDA_DIR=/opt/conda \
    SHELL=/bin/bash \
    PATH=/opt/conda/bin:$PATH

ARG PKGS="numpy \
    pandas \
    matplotlib \
    seaborn \
    jupyterlab"

RUN apt update && \
    apt install -y vim && \
    useradd -m bryce -u 1500 -s /bin/bash && \
    echo "conda activate base" >> ~/.bashrc

RUN conda install -c conda-forge -y ${PKGS}
    # conda create --name bryce_py38 python=3.8 && \
    # echo "conda activate bryce_py38" >> ~/.bashrc

# SHELL ["conda", "activate", "bryce_py38"] && \
#     ["conda", "install", "-c", "conda-forge", "-y", "${PKGS}"]

# USER bryce
# COPY .bashrc ~/.bashrc

# SHELL ["conda", "init", "bash"] && \
#     ["echo", "'conda", "activate", "bryce_py38'", ">>", "~/.bashrc"] && \
#     ["source", "~/.bashrc"]

EXPOSE 8888
