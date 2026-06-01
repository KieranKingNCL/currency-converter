#!/bin/bash

# ==========================================================

# Name: Kieran King

# Student Number: 30106759

# Assessment Task 2 - Infrastructure as Code Provisioning

# Purpose: Configure Ubuntu EC2 instance automatically

# ==========================================================

# Step 1: Update package lists

sudo apt update -y

# Step 2: Upgrade installed packages

sudo apt upgrade -y

# Step 3: Install Python 3

sudo apt install -y python3

# Step 4: Install pip for Python package management

sudo apt install -y python3-pip

# Step 5: Install Flask framework

# Ubuntu 24.04+ uses PEP668 protection, so use --break-system-packages

pip3 install flask --break-system-packages

# Step 6: Install Git version control

sudo apt install -y git

# Step 7: Install Docker Engine

curl -fsSL https://get.docker.com | sudo sh

# Step 8: Add current user to Docker group

sudo usermod -aG docker ubuntu

# Step 9: Install Docker Compose

sudo apt install -y docker-compose-plugin

# ==========================================================

# Verification Section

# ==========================================================

# Step 10: Verify Operating System information

echo
echo "===== Operating System ====="
hostnamectl

# Step 11: Verify Python installation

echo
echo "===== Python ====="
python3 --version
pip3 --version

# Step 12: Verify Flask installation

echo
echo "===== Flask ====="
python3 -m pip show flask | grep Version

# Step 13: Verify Git installation

echo
echo "===== Git ====="
git --version

# Step 14: Verify Docker installation

echo
echo "===== Docker ====="
docker --version

# Step 15: Verify Docker Compose installation

echo
echo "===== Docker Compose ====="
docker compose version

# Step 16: Display completion message

echo
echo "Infrastructure provisioning completed successfully."
