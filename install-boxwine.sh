#!/data/data/com.termux/files/usr/bin/bash

# Обновление и установка зависимостей
pkg update -y
pkg upgrade -y
pkg install x11-repo -y
pkg install tur-repo -y
pkg install box64 box86 wine xwayland curl -y

# Создание рабочего каталога
mkdir -p $HOME/boxwine
cd $HOME/boxwine

# Скачивание BoxWine
curl -L -o boxwine.tar.gz https://github.com/ShephardOS/BoxWine/releases/latest/download/boxwine.tar.gz

# Распаковка и удаление архива
tar -xvf boxwine.tar.gz
rm boxwine.tar.gz

# Запуск X11-сервера
export DISPLAY=:0
termux-x11 :0 &

# Запуск BoxWine
./boxwine
