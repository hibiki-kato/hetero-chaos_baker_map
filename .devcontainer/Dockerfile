FROM mcr.microsoft.com/vscode/devcontainers/base:bullseye
#[Optional] Uncomment this section to install additional packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential cmake gcc gfortran pip git \
    && pip install fortls
