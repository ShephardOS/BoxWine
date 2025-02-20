#!/bin/bash set -e

Устанавливаем зависимости

pkg update && pkg upgrade -y pkg install -y git cmake clang python binutils x11-repo pkg install -y wine xwayland pulseaudio termux-x11-nightly

Папка для установки

mkdir -p ~/boxwine && cd ~/boxwine

Клонируем репозитории

[ ! -d "BoxWine" ] && git clone --depth=1 https://github.com/ptitSeb/BoxWine.git [ ! -d "box64" ] && git clone --depth=1 https://github.com/ptitSeb/box64.git [ ! -d "box86" ] && git clone --depth=1 https://github.com/ptitSeb/box86.git [ ! -d "dxvk" ] && git clone --depth=1 https://github.com/doitsujin/dxvk.git [ ! -d "wine" ] && git clone --depth=1 https://github.com/wine-mirror/wine.git

Компиляция и установка BoxWine

cd ~/boxwine/BoxWine mkdir -p build && cd build cmake .. make -j$(nproc) make install

Компиляция и установка Box64

cd ~/boxwine/box64 mkdir -p build && cd build cmake .. make -j$(nproc) make install

Компиляция и установка Box86

cd ~/boxwine/box86 mkdir -p build && cd build cmake .. make -j$(nproc) make install

Компиляция и установка DXVK

cd ~/boxwine/dxvk ./package-release.sh master ~/boxwine/dxvk-build --no-package

Устанавливаем Wine

cd ~/boxwine/wine ./configure --enable-win64 make -j$(nproc) make install

Создаём команду для запуска BoxWine

cat << EOF > /data/data/com.termux/files/usr/bin/boxwine #!/bin/bash export DISPLAY=:1 export PULSE_SERVER=127.0.0.1 termux-x11 :1 & pulseaudio --start exec ~/boxwine/BoxWine/build/boxwine EOF chmod +x /data/data/com.termux/files/usr/bin/boxwine

echo "Установка завершена! Запускайте BoxWine командой: boxwine"










