FROM ghcr.io/4c-multiphysics/4c-dependencies-ubuntu24.04:2026.3.0

USER root
RUN apt-get update && apt-get install -y \
  clangd-20 \
  mold \
  && rm -rf /var/lib/apt/lists/* \
  && ln -s /usr/bin/clangd-20 /usr/bin/clangd
