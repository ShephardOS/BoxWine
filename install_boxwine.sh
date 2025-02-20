#!/bin/bash
# Скрипт установки BoxWine в Termux

echo "Установка необходимых пакетов..."
pkg update -y && pkg upgrade -y
pkg install -y x11-repo
pkg install -y termux-x11-nightly pulseaudio wget curl

echo "Скачивание и установка BoxWine..."
curl -s -o $HOME/install_boxwine.sh https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh

# Проверяем, скачался ли файл
if [ ! -f "$HOME/install_boxwine.sh" ]; then
    echo "Ошибка: install_boxwine.sh не найден! Проверьте ссылку."
    exit 1
fi

chmod +x $HOME/install_boxwine.sh
bash $HOME/install_boxwine.sh

echo "Создание команды boxwine..."
mkdir -p $PREFIX/bin
echo -e '#!/bin/bash\nexport DISPLAY=:1\npulseaudio --start\n~/boxwine/boxwine --desktop' > $PREFIX/bin/boxwine
chmod +x $PREFIX/bin/boxwine

echo "Установка завершена! Для запуска используйте команду: boxwine"
