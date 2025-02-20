#!/data/data/com.termux/files/usr/bin/bash

# 1. Обновление пакетов и установка curl
pkg update -y && pkg install -y curl

# 2. Установка необходимых пакетов для X11
pkg install -y xwayland termux-x11-nightly feh

# 3. Скачивание BoxWine
curl -o $HOME/install-boxwine.sh https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh

# 4. Делаем скрипт исполняемым
chmod +x $HOME/install-boxwine.sh

# 5. Запуск install-boxwine.sh
bash $HOME/install-boxwine.sh

# 6. Скачивание обоев
mkdir -p $HOME/.config/boxwine
curl -o $HOME/.config/boxwine/background.jpg https://raw.githubusercontent.com/ShephardOS/BoxWine/main/background.jpg

# 7. Создание команды "boxwine"
cat <<EOF > $PREFIX/bin/boxwine
#!/data/data/com.termux/files/usr/bin/bash
export DISPLAY=:0
termux-x11 :0 &
sleep 2
feh --bg-scale \$HOME/.config/boxwine/background.jpg
cd \$HOME/boxwine && ./BoxWine
EOF

# 8. Делаем команду исполняемой
chmod +x $PREFIX/bin/boxwine

echo "✅ Установка завершена! Введите 'boxwine' для запуска рабочего стола в Termux X11."




