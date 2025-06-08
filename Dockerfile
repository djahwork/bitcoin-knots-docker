# Use a base image with necessary dependencies
FROM ubuntu:jammy

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    wget \
    git \
    software-properties-common \
    curl \
    build-essential \
    libssl-dev \
    libboost-all-dev \
    libdb5.3-dev \
    libzmq3-dev \
    libevent-dev \
    libminiupnpc-dev \
    procps \
    make && \
    apt-get clean

# Install Bitcoin Knots
RUN mkdir -p /bitcoin && \
    cd /bitcoin && \
    wget https://bitcoinknots.org/files/28.x/28.1.knots20250305/bitcoin-28.1.knots20250305-x86_64-linux-gnu.tar.gz && \
    tar -xzf bitcoin-28.1.knots20250305-x86_64-linux-gnu.tar.gz && \
    mv bitcoin-28.1.knots20250305/bin/* /usr/local/bin/

COPY bitcoin.conf /root/.bitcoin/bitcoin.conf

# Expose Bitcoin ports
EXPOSE 18332 18333

# Command to start bitcoind
CMD ["bitcoind", "-conf=/root/.bitcoin/bitcoin.conf", "-datadir=/root/.bitcoin"]

