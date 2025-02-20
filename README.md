BoxWine Emulator

BoxWine — это эмулятор, позволяющий запускать Windows-игры на Linux с минимальными лагами. Он использует комбинацию Wine, DXVK, Box64, Box86 и Turnip для максимальной производительности и совместимости.

Возможности

Запуск Windows-игр на ARM и x86

Ускорение графики с DXVK

Поддержка 64-битных и 32-битных приложений через Box64 и Box86

Оптимизация производительности с помощью Turnip


Установка

Установка Termux и Termux-X11

1. Скачайте и установите Termux: Termux (F-Droid)


2. Скачайте и установите Termux:X11: Termux-X11 (F-Droid)



Установка BoxWine

1. Откройте Termux и выполните следующие команды:

curl -LO https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh
chmod +x install-boxwine.sh
./install-boxwine.sh


2. После установки запустите эмулятор командой:

boxwine



Требования

Linux (ARM/x86)

Termux + Termux-X11

Wine

DXVK

Box64/Box86

Turnip (для Vulkan-рендеринга)


Контакты

Если у вас есть вопросы или предложения, создавайте issue в репозитории или пишите на email разработчика.

Лицензия

Проект распространяется под лицензией MIT.






