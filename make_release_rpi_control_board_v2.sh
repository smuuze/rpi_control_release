#!/bin/bash


echo Welcome to the Release RPi Control-Board v 2 Release Script v1.0

mkdir -p RPi_Control_Board_v2
mkdir -p RPi_IR_Remote_Board
mkdir -p RPi_SHC_Client

git clone https://www.github.com/smuuze/rpi_control_frmwrk
git clone https://www.github.com/smuuze/rpi_control_fw
git clone https://www.github.com/smuuze/rpi_control_sw

cd rpi_control_fw/cfg_rpi_hat_control_board_v2
make release
cp -r release/* ../../RPi_Control_Board_v2

cd ../cfg_rpi_hat_ir_board
make release
cp -r release/* ../../RPi_IR_Remote_Board

cd ../../rpi_control_sw/cfg_SHC_CLIENT
make release
cp -r release/* ../../RPi_SHC_Client

cd ../..
ls 
rm -rf rpi_control_frmwrk
rm -rf rpi_control_fw
rm -rf rpi_control_sw

git add *
git commit -m "Automatic Relase"
git push

