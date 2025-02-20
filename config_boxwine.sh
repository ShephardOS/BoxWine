#!/bin/bash
# Скрипт конфигурации BoxWine в Termux

echo "Настройка окружения для BoxWine..."

# Устанавливаем переменные среды
export DISPLAY=:1
export BOXWINE_CPU_CORES=$(nproc)
export BOXWINE_RAM_MB=1024  # Можно увеличить при необходимости
export PULSE_SERVER=127.0.0.1

echo "Создание конфигурационного файла..."
mkdir -p ~/.boxwine
cat <<EOF > ~/.boxwine/config.ini
[Performance]
cpu_cores=$BOXWINE_CPU_CORES
ram_mb=$BOXWINE_RAM_MB
EOF

echo "Конфигурация завершена! Используйте команду 'boxwine' для запуска."
