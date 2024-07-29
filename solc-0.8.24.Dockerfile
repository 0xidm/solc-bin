###
# Build solc 0.8.x static binary for linux

FROM ubuntu:jammy

RUN apt update && apt -y upgrade
RUN apt -y install \
  git-core \
  build-essential \
  cmake
RUN apt -y install \
  libboost-dev \
  libboost-filesystem-dev \
  libboost-test-dev \
  libboost-program-options-dev
  
ARG SOLC_VERSION
  
WORKDIR /usr/local/src
RUN git clone \
  --branch ${SOLC_VERSION} \
  --recursive \
  --depth 1 \
  https://github.com/ethereum/solidity.git

WORKDIR /usr/local/src/solidity
RUN echo -n > prerelease.txt
RUN mkdir build

WORKDIR /usr/local/src/solidity/build
RUN cmake \
  -DSOLC_LINK_STATIC=ON \
  -DSOLC_STATIC_STDLIBS=ON \
  -DUSE_Z3=OFF \
  ..
RUN make -j6
RUN strip solc/solc
    
CMD ["/bin/bash"]
