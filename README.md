 # 🏆 BoxWine — эмулятор для PC-игр в Termux

BoxWine — это эмулятор, который позволяет запускать PC-игры на Android через Termux.  
Он поддерживает **DXVK, Box86, Box64, Wine и Turnip** для лучшей совместимости.

---

## 🚀 Возможности
✔ Поддержка **DirectX и Vulkan** через DXVK  
✔ Эмуляция **x86 и x86_64** на ARM через Box86 и Box64  
✔ Работа с **Wine и Turnip** для запуска Windows-программ  
✔ Запуск через **Termux X11** (графический интерфейс)  

---

## 📥 Установка (Termux)

Сначала установите **Termux** и **Termux X11**:  
- 📥 **Termux**: [Скачать Termux (F-Droid)](https://f-droid.org/en/packages/com.termux/)  
- 📥 **Termux X11**: [Скачать Termux X11 (GitHub)](https://github.com/termux/x11-packages)  

### 🔹 **Шаг 1: Установка BoxWine**
```sh
curl -sSL https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install-boxwine.sh | bash

🔹 Шаг 2: Запуск BoxWine
После завершения установки введите команду:
boxwine
🚀 Это запустит рабочий стол в Termux X11!




