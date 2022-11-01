#!/bin/sh
sleep 30

# Install node js
sudo apt update
sudo apt install -y nodejs
sudo apt install -y npm

# Install pm2
sudo npm install -g pm2


#git clone
git clone https://github.com/smita-upadhyay/nodeAppone.git

#react  config
cd nodeAppone
npm install
npm run build

#configurationpm2 and serve
sudo npm install serve --global
sudo pm2 serve build 3000 --spa
sudo pm2 startup
sudo pm2 save

#nodejs config
cd NodeJS
npm install
sudo pm2 start server.js
sudo pm2 startup
sudo pm2 save


