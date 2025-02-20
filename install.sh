#!/bin/bash

Обновление и установка необходимых пакетов

pkg update -y && pkg upgrade -y pkg install -y x11-repo tur-repo pkg install -y proot pulseaudio xorg-server-xvfb pkg install -y mesa dxvk box64 box86 wine wget tar

Создание рабочей директории

mkdir -p ~/boxwine/bin && cd ~/boxwine

Загрузка и установка BoxWine

wget -O boxwine.tar.gz https://github.com/ptitSeb/boxwine/releases/latest/download/boxwine.tar.gz tar -xzf boxwine.tar.gz -C ~/boxwine/bin chmod +x ~/boxwine/bin/boxwine

Создание команды для запуска BoxWine

echo "#!/bin/bash" > /data/data/com.termux/files/usr/bin/boxwine echo "cd ~/boxwine/bin && ./boxwine" >> /data/data/com.termux/files/usr/bin/boxwine chmod +x /data/data/com.termux/files/usr/bin/boxwine

Очистка установочных файлов

rm -f ~/boxwine.tar.gz

echo "Установка завершена! Используйте команду 'boxwine' для запуска."



