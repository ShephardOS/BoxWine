#!/bin/bash

# Обновление и установка необходимых пакетов
apt update -y && apt upgrade -y
apt install -y git proot wget build-essential cmake ninja

# Клонирование репозитория с исходным кодом
if [ ! -d "$HOME/BoxWine" ]; then
    git clone https://github.com/ShephardOS/BoxWine.git "$HOME/BoxWine"
fi

cd "$HOME/BoxWine"

# Установка Box64
if [ ! -d "$HOME/box64" ]; then
    git clone https://github.com/ptitSeb/box64.git "$HOME/box64"
    cd "$HOME/box64"
    mkdir build && cd build
    cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo
    make -j$(nproc)
    make install
fi

# Установка Box86
if [ ! -d "$HOME/box86" ]; then
    git clone https://github.com/ptitSeb/box86.git "$HOME/box86"
    cd "$HOME/box86"
    mkdir build && cd build
    cmake .. -DCMAKE_BUILD_TYPE=RelWithDebInfo
    make -j$(nproc)
    make install
fi

# Установка Wine
if [ ! -d "$HOME/wine" ]; then
    git clone https://github.com/wine-mirror/wine.git "$HOME/wine"
    cd "$HOME/wine"
    ./configure
    make -j$(nproc)
    make install
fi

# Установка DXVK
if [ ! -d "$HOME/dxvk" ]; then
    git clone https://github.com/doitsujin/dxvk.git "$HOME/dxvk"
    cd "$HOME/dxvk"
    ./package-release.sh master /dxvk --no-package
    cp -r /dxvk/x64/* /usr/lib/wine
    cp -r /dxvk/x32/* /usr/lib32/wine
fi

# Создание команды для запуска BoxWine
echo '#!/bin/bash' > $HOME/boxwine.sh
echo 'proot -0 -w /home $HOME/BoxWine/boxwine' >> $HOME/boxwine.sh
chmod +x $HOME/boxwine.sh

echo "Установка завершена! Запустите BoxWine с помощью команды ./boxwine.sh"








