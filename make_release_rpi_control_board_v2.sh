#!/bin/bash


echo Welcome to the Release RPi Control-Board v 2 Release Script v1.0

mkdir -p RPi_Control_Board_v2

git clone https://www.github.com/smuuze/rpi_control_frmwrk
git clone https://www.github.com/smuuze/rpi_control_fw

cd rpi_control_fw/cfg_rpi_hat_control_board_v2

make release

cp -r release/* ../../RPi_Control_Board_v2

cd ../..
ls 
rm -rf rpi_control_frmwrk
rm -rf rpi_control_fw

git add *
git commit -m "Automatic Relase"
git push

