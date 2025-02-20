
BoxWine Emulator

BoxWine — это эмулятор, позволяющий запускать Windows-игры на Linux с минимальными лагами. Он использует комбинацию Wine, DXVK, Box64, Box86 и Turnip для максимальной производительности и совместимости.

Возможности

Запуск Windows-игр на ARM и x86

Ускорение графики с DXVK

Поддержка 64-битных и 32-битных приложений через Box64 и Box86

Оптимизация производительности с помощью Turnip


Установка

Шаг 1: Установка Termux и Termux-X11

Перед началом установки убедитесь, что у вас установлены Termux и Termux-X11:

Скачать Termux (F-Droid)

Скачать Termux-X11 (F-Droid)


Шаг 2: Установка BoxWine

Откройте Termux и выполните следующую команду:

curl -LO https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh && chmod +x install-boxwine.sh && ./install-boxwine.sh

<button onclick="navigator.clipboard.writeText('curl -LO https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh && chmod +x install-boxwine.sh && ./install-boxwine.sh')">📋 Копировать команду</button>

Шаг 3: Запуск эмулятора

После завершения установки запустите эмулятор командой:

boxwine

Требования

Linux (ARM/x86)

Termux + Termux-X11

Wine

DXVK

Box64/Box86

Turnip (для Vulkan-рендеринга)


Поддержка и обратная связь

Если у вас есть вопросы или предложения, создавайте issue в репозитории или пишите на email разработчика.

Лицензия

Проект распространяется под лицензией MIT.









