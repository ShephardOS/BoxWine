#!/bin/bash

Обновление и установка необходимых пакетов

apt update -y && apt upgrade -y apt install -y git wget proot tar

Клонирование репозитория с исходным кодом

if [ ! -d "$HOME/BoxWine" ]; then git clone https://github.com/ShephardOS/BoxWine.git $HOME/BoxWine fi

cd $HOME/BoxWine

Установка Box64, Box86, Wine, DXVK

bash install_box64.sh bash install_box86.sh bash install_wine.sh bash install_dxvk.sh

Создание команды для запуска BoxWine

echo "#!/bin/bash proot -0 -w /home ./BoxWine/start.sh" > $PREFIX/bin/boxwine chmod +x $PREFIX/bin/boxwine

echo "Установка завершена! Запустите BoxWine командой: boxwine"








