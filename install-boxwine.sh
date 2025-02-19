
# Установка box86 и box64 вручную (если они нужны)
if [ ! -d $HOME/box64 ]; then
    git clone https://github.com/ptitSeb/box64.git $HOME/box64
    cd $HOME/box64
    mkdir -p build && cd build
    cmake -B build -S .. -DCMAKE_INSTALL_PREFIX=$PREFIX
    make clean
    make -j$(nproc)
    make install
fi

if [ ! -d $HOME/box86 ]; then
    git clone https://github.com/ptitSeb/box86.git $HOME/box86
    cd $HOME/box86
    mkdir -p build && cd build
    cmake -B build -S .. -DCMAKE_INSTALL_PREFIX=$PREFIX
    make clean
    make -j$(nproc)
    make install
fi
