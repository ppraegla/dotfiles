FROM ghcr.io/4c-multiphysics/4c-dependencies-ubuntu24.04:2026.3.0

USER root
RUN apt-get update && apt-get install -y \
  clang-format-20 \
  clangd-20 \
  gdb \
  mold \
  && rm -rf /var/lib/apt/lists/* \
  && ln -s /usr/bin/clangd-20 /usr/bin/clangd \
  && ln -s /usr/bin/clang-format-20 /usr/bin/clang-format
