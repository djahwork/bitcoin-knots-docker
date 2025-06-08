# 🪙 Bitcoin Knots Docker Image (v28.1.knots20250305)

This repository provides a Dockerfile to build and run **Bitcoin Knots v28.1.knots20250305** inside a Docker container based on **Ubuntu 22.04 (Jammy Jellyfish)**.

---

## 📦 What’s Inside

- Uses `ubuntu:jammy` as the base image
- Installs required dependencies to run Bitcoin Knots
- Downloads and installs [Bitcoin Knots](https://bitcoinknots.org/)
- Starts `bitcoind` with a custom `bitcoin.conf` file
- Exposes testnet ports for RPC and P2P

---

## 🛠️ Requirements

- [Docker](https://www.docker.com/get-started) installed
- A basic `bitcoin.conf` file (you can use the example below)

---

## 🚀 Getting Started

Follow the steps below to build and run the Bitcoin Knots container:

---

### ✅ Step 1: Clone This Repository

```bash
git clone https://github.com/djahwork/bitcoin-knots-docker.git
cd bitcoin-knots-docker


### ✅ Step 2: Configure the bitcoin.conf File

# bitcoin.conf (example config for testnet)

# Enable testnet mode
testnet=1

# Enable RPC server
server=1

# RPC login credentials
rpcuser=yourusername
rpcpassword=yoursecurepassword

# Allow RPC connections from localhost only
rpcallowip=127.0.0.1

# Optional: enable transaction and block indexing
txindex=1
blockfilterindex=1

### ✅ Step 3: Build the Docker Image

```bash
docker build -t bitcoin-knots .


### ✅ Step 4: Run the Container

```bash
docker run -d \
  -p 18332:18332 \
  -p 18333:18333 \
  --name bitcoin-knots \
  bitcoin-knots


### ✅ Step 5: See the logs

```bash
docker logs bitcoin-knots
