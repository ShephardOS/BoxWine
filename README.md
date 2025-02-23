
# BoxWine

BoxWine — это эмулятор для запуска Windows-программ и игр на устройствах Android с использованием Wine. Он позволяет создать рабочий стол Windows в **Termux** с использованием **Termux:X11** и других необходимых инструментов для эмуляции.

## Особенности

- Поддержка Wine для запуска Windows-программ.
- Простая установка с использованием `curl` в **Termux**.
- Запуск Windows-программ в **Termux** с X11 для графического интерфейса.
- Использование PulseAudio для звука.
- Поддержка архитектур **ARM** и **x86**.
- Легкость в установке и настройке.

## Установка

### 1. Установите **Termux**

Скачайте и установите **Termux**:

- Для устройств Android: загрузите **Termux** из [Google Play Store](https://play.google.com/store/apps/details?id=com.termux) или [F-Droid](https://f-droid.org/packages/com.termux/).

### 2. Установите **Termux:X11**

Для запуска графического интерфейса, вам потребуется **Termux:X11**:

- Установите **Termux:X11** из репозитория F-Droid: [Termux-X11 на F-Droid](https://f-droid.org/packages/com.termux.x11/).

### 3. Установите **InputBridge** для взаимодействия с графическим интерфейсом

Чтобы корректно работать с графическим интерфейсом через **Termux**, установите **InputBridge**:

- Загрузите и установите **InputBridge** с помощью этого [ссылки](https://github.com/Termux-Tools/InputBridge) или через [F-Droid](https://f-droid.org/packages/com.termux.inputbridge/).

### 4. Установите **curl** в **Termux**

**curl** будет использоваться для загрузки и установки **BoxWine**. Для установки выполните команду:

```bash
pkg update && pkg upgrade -y
pkg install curl -y









