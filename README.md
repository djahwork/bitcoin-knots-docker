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
