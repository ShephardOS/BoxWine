#!/bin/bash
# Скрипт для запуска BoxWine в Termux:X11

echo "Запуск Termux:X11..."
export DISPLAY=:1
termux-x11 :1 &

# Ожидание запуска X11
sleep 2

echo "Запуск Pulseaudio..."
pulseaudio --start

echo "Запуск BoxWine..."
~/boxwine/boxwine --desktop
