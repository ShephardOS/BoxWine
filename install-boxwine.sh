#!/data/data/com.termux/files/usr/bin/bash

Обновление пакетов и установка зависимостей

pkg update -y && pkg upgrade -y pkg install x11-repo tur-repo -y pkg install xwayland curl git cmake ninja clang llvm make python -y

Создание рабочей директории

mkdir -p $HOME/boxwine && cd $HOME/boxwine

Установка box86

if [ ! -d "$HOME/box86" ]; then git clone https://github.com/ptitSeb/box86.git $HOME/box86 cd $HOME/box86 && mkdir build && cd build cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX make -j$(nproc) && make install fi

Установка box64

if [ ! -d "$HOME/box64" ]; then git clone https://github.com/ptitSeb/box64.git $HOME/box64 cd $HOME/box64 && mkdir build && cd build cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX make -j$(nproc) && make install fi

Установка DXVK

if [ ! -d "$HOME/dxvk" ]; then git clone https://github.com/doitsujin/dxvk.git $HOME/dxvk cd $HOME/dxvk ./package-release.sh master /dxvk-install --no-package cp -r /dxvk-install $PREFIX fi

Установка Turnip (драйвера Vulkan)

if [ ! -d "$HOME/turnip" ]; then git clone https://gitlab.freedesktop.org/mesa/mesa.git $HOME/turnip cd $HOME/turnip && mkdir build && cd build meson .. -Dgallium-drivers=swrast -Dvulkan-drivers=freedreno -Dplatforms=x11 ninja install fi

Установка Mesa (OpenGL/Vulkan)

if [ ! -d "$HOME/mesa" ]; then git clone https://gitlab.freedesktop.org/mesa/mesa.git $HOME/mesa cd $HOME/mesa && mkdir build && cd build meson .. -Dgallium-drivers=auto -Dvulkan-drivers=auto -Dplatforms=x11 ninja install fi

Скачивание и запуск BoxWine

curl -L -o boxwine.tar.gz "https://github.com/ShephardOS/BoxWine/releases/latest/download/boxwine.tar.gz" || { echo "Ошибка скачивания"; exit 1; } tar -xvf boxwine.tar.gz && rm boxwine.tar.gz

Запуск X11-сервера

export DISPLAY=:0 termux-x11 :0 &

Запуск BoxWine

./boxwine


