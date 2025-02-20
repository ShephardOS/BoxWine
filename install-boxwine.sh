#!/bin/bash

Обновление пакетов

apt update && apt upgrade -y

Установка зависимостей

apt install -y x11-repo apt install -y pulseaudio termux-x11-nightly

Установка Box64 и Box86

apt install -y box64 box86

Установка Wine

apt install -y wine

Установка DXVK

apt install -y dxvk

Установка Turnip

apt install -y mesa-vulkan-drivers

Создание команды для запуска

cat <<EOF > /data/data/com.termux/files/usr/bin/boxwine #!/bin/bash export DISPLAY=:1 pulseaudio --start startx & wine EOF chmod +x /data/data/com.termux/files/usr/bin/boxwine

echo "Установка завершена! Запустите эмулятор командой: boxwine"






