# BoxWine  

[![YouTube](https://img.shields.io/badge/YouTube-BoxWineProject-red?style=for-the-badge&logo=youtube)](https://www.youtube.com/@boxwineproject)  
[![Discord](https://img.shields.io/badge/Discord-Join-blue?style=for-the-badge&logo=discord)](https://discord.gg/n4kTSMpP)  
[![Telegram](https://img.shields.io/badge/Telegram-Chat-blue?style=for-the-badge&logo=telegram)](https://t.me/boxwine_project_official)  

---

## 🌍 About Project

**BoxWine** is a tool for running Windows x86 applications in **Termux**. It uses **Box64** and **Wine**, which allows you to run even complex programs.  
 


## 📥 Installing

1. Install [Termux](https://f-droid.org/packages/com.termux/), [Termux-X11](https://github.com/termux/termux-x11/releases) and [Input Bridge](https://github.com/termux/input-bridge).  
2. Open Termux and run:  

   ```sh
   curl -s -o ~/x https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install && sh ~/x

##controls

For touch controls Input Bridge app is required
## Uninstall
To uninstall mobox, use `Backup and restore` menu.
## Debugging
To enable logging - select option 2 in boxwine -> Settings -> Debug settings menu. Path to the log is /sdcard/mobox_log.txt

## Support status
### Android
* `Android 10` or higher is recommended.
### Device
* Most Android cellphones can run `boxwine` and DirectX 9 games using Mesa VirGL.
* Snapdragon device with Adreno 6xx or Adreno 725-740 is recommended to achieve best performance and compatibility with Turnip+DXVK.
### Root
* Root is not required.

## Known issues
* If termux app crashes when trying to enter mobox menu, then remove custom theme scripts:
```bash
rm -rf $PREFIX/glibc/opt/termux-style
```
* Some devices may have prefix creation freeze issues when installing PhysX, in this case change settings in `Compatibility settings` menu
* For SD845 device, disable dri3 in `Compatibility settings` menu



## Third party applications

[glibc-packages](https://github.com/termux-pacman/glibc-packages)

[Box64](https://github.com/ptitSeb/box64)

[Box86](https://github.com/ptitSeb/box86)

[DXVK](https://github.com/doitsujin/dxvk)

[DXVK-ASYNC](https://github.com/Sporif/dxvk-async)

[DXVK-GPLASYNC](https://gitlab.com/Ph42oN/dxvk-gplasync)

[VKD3D](https://github.com/lutris/vkd3d)

[D8VK](https://github.com/AlpyneDreams/d8vk)

[Termux-app](https://github.com/termux/termux-app)

[Termux-x11](https://github.com/termux/termux-x11)

[Wine](https://wiki.winehq.org/Licensing)

[wine-ge-custom](https://github.com/GloriousEggroll/wine-ge-custom)

[Mesa](https://docs.mesa3d.org/license.html)

[mesa-zink-11.06.22](https://github.com/alexvorxx/mesa-zink-11.06.22)

[Mesa-VirGL](https://github.com/alexvorxx/Mesa-VirGL)


