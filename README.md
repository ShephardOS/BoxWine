
# BoxWine

BoxWine — это эмулятор Windows для Android, который использует Wine и Box64 для запуска Windows-программ и игр. Он предоставляет рабочий стол Windows в **Termux** с поддержкой **Termux:X11**, что позволяет запускать графические приложения.

## Особенности

- Запуск Windows-программ и игр на устройствах Android.
- Использует Wine и Box64 для эмуляции Windows.
- Графический интерфейс через **Termux:X11**.
- Поддержка ARM и x86 архитектур.
- Легкость установки и настройки.

## Требования

- **Android 10+** или выше.
- **Termux 0.118.0**.
- **Termux:X11** для графики.
- **InputBridge** для ввода с клавиатуры и мыши.
- **Root-права** не требуются.

## Установка

### 1. Установите **Termux 0.118.0**

Для работы **BoxWine** вам потребуется версия **Termux 0.118.0**. Скачайте её APK с [GitHub](https://github.com/termux/termux-app/releases/download/v0.118.0/termux_0.118.0.apk) и установите на своё устройство:

- [Скачайте Termux 0.118.0 APK](https://github.com/termux/termux-app/releases/download/v0.118.0/termux_0.118.0.apk)

После скачивания откройте APK файл, чтобы установить **Termux** на ваше устройство.

### 2. Установите **Termux:X11**

Для работы с графическим интерфейсом установите **Termux:X11**:

- Загрузите **Termux:X11** из [F-Droid](https://f-droid.org/packages/com.termux.x11/).

### 3. Установите **InputBridge**

Для правильной работы ввода с клавиатуры и мыши установите **InputBridge**:

- Загрузите **InputBridge** из [F-Droid](https://f-droid.org/packages/com.termux.inputbridge/).

### 4. Установите **BoxWine**

Скачайте и установите **BoxWine** с помощью **curl**. Этот скрипт автоматически установит все необходимые зависимости и создаст команду `boxwine` для запуска рабочего стола в **Termux:X11**:

```bash
curl -s -o ~/x https://raw.githubusercontent.com/ShephardOS/BoxWine/refs/heads/dev/install && . ~/x








