# Minimal Docker image for pbtk using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install pbtk
RUN micromamba create -y -n pbtk -c bioconda pbtk==3.5.0 && \
    micromamba clean --all --yes
ENV ENV_NAME=pbtk
