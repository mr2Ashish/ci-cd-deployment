#!/bin/bash
sudo apt update -y
sudo apt install python3 python3-pip nodejs npm git -y
sudo npm install -g pm2

# Clone repos (adjust URLs)
git clone https://github.com/youruser/ci-cd-deployment.git
cd ci-cd-deployment

# Flask Setup
cd backend
pip3 install -r requirements.txt
pm2 start app.py --interpreter python3

# Express Setup
cd ../frontend
npm install
pm2 start server.js
