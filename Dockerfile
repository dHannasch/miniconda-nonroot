FROM continuumio/miniconda

ARG RAY_UID=1000
ARG RAY_GID=100

RUN useradd --create-home ray --uid $RAY_UID --gid $RAY_GID \
    && usermod --append --groups sudo ray \
    && echo 'ray ALL=NOPASSWD: ALL' >> /etc/sudoers

USER $RAY_UID
