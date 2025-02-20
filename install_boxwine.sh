
#!/bin/bash

# Меняем репозиторий Termux, если старый не работает
termux-change-repo

# Обновляем пакеты и устанавливаем основные зависимости
pkg update -y && pkg upgrade -y
pkg install x11-repo -y
pkg install termux-x11-nightly pulseaudio wget tar -y
pkg install mesa mesa-utils vulkan-loader -y
pkg install xorg-server-xvfb xorg-server-xvnc -y
pkg install box64 box86 wine -y

# Устанавливаем дополнительные компоненты DXVK и Turnip (если поддерживается устройством)
pkg install dxvk -y || echo "DXVK не поддерживается"
pkg install turnip -y || echo "Turnip не поддерживается"

# Скачиваем и устанавливаем BoxWine
cd $HOME
wget -O install_boxwine.sh https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install_boxwine.sh
chmod +x install_boxwine.sh
bash install_boxwine.sh

# Создаем команду "boxwine" для запуска в Termux:X11
echo -e '#!/bin/bash\nexport DISPLAY=:1\npulseaudio --start\ntermux-x11 :1 &\nsleep 2\n~/boxwine/boxwine --desktop' > $PREFIX/bin/boxwine
chmod +x $PREFIX/bin/boxwine

# Запускаем BoxWine
boxwine
