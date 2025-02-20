
BoxWine Installer for Android (Termux)

Описание

Этот скрипт позволяет установить эмулятор BoxWine на Android через Termux и создать удобную команду для его запуска.

Установка

Откройте Termux и выполните следующую команду:

curl -s -o ~/install_boxwine.sh https://raw.githubusercontent.com/boxwine/boxwine/main/install && chmod +x ~/install_boxwine.sh && ~/install_boxwine.sh

Создание команды boxwine

После установки выполните:

echo 'cd ~/boxwine && ./boxwine' > ~/bin/boxwine && chmod +x ~/bin/boxwine

Теперь можно запускать эмулятор просто введя:

boxwine

Автозапуск рабочего стола

Если требуется сразу запускать рабочий стол BoxWine, используйте:

echo 'cd ~/boxwine && ./boxwine --desktop' > ~/bin/boxwine && chmod +x ~/bin/boxwine

Требования

Android 10+

Termux (установите с F-Droid)

Termux: X11 (если нужен GUI, установите с F-Droid)


Дополнительно

Для управления можно использовать Input Bridge или подключать геймпады через Xinput Bridge.


---

Источник

Официальный репозиторий BoxWine: GitHub










