#!/data/data/com.termux/files/usr/bin/bash

# Обновление пакетов и установка зависимостей
pkg update -y && pkg upgrade -y
pkg install -y xwayland termux-x11-nightly curl git cmake ninja clang llvm make python

# Клонирование и установка BoxWine
if [ ! -d "$HOME/boxwine" ]; then
    git clone https://github.com/ShephardOS/BoxWine.git $HOME/boxwine
fi
cd $HOME/boxwine

# Установка исполняемых файлов
chmod +x install-boxwine.sh
./install-boxwine.sh

# Создание команды "boxwine" для запуска рабочего стола
echo 'export DISPLAY=:0' >> $HOME/.bashrc
echo 'termux-x11 :0 &' >> $HOME/.bashrc
echo 'cd $HOME/boxwine && ./BoxWine' >> $HOME/.bashrc

# Создаём исполняемый скрипт
cat <<EOF > $PREFIX/bin/boxwine
#!/data/data/com.termux/files/usr/bin/bash
export DISPLAY=:0
termux-x11 :0 &
cd \$HOME/boxwine && ./BoxWine
EOF

chmod +x $PREFIX/bin/boxwine

echo "Установка завершена! Введите 'boxwine' для запуска."



