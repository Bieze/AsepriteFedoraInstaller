#!/usr/bin/bash

mkdir -p ~/Downloads

echo "Downloading files with curl"
curl -L -o aseprite.rpm "https://download.opensuse.org/repositories/openSUSE:/Leap:/15.2/standard/x86_64/aseprite-1.1.7-lp152.3.9.x86_64.rpm"
curl -L -o libjpeg8.rpm "https://download.opensuse.org/repositories/openSUSE:/Leap:/15.2:/Update/standard/x86_64/libjpeg8-8.1.2-lp152.8.6.1.x86_64.rpm"
echo "Waiting 5 seconds before installing"
sleep 5
echo "Installing aseprite.rpm and libjpeg8.rpm"
sudo dnf install "aseprite.rpm"
sudo dnf install "libjpeg8.rpm"
