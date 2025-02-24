
# BoxWine Installation Guide

This guide will help you install BoxWine along with its dependencies on your Android device.

## Prerequisites

Before installing BoxWine, ensure you have the following applications installed on your device:

1. **Termux**: A terminal emulator for Android.
2. **Termux:X11**: An add-on for Termux to provide X11 support.
3. **InputBridge**: A tool to enhance input controls.

## Installation Steps

### 1. Install Termux

Download and install Termux from F-Droid:

[![Termux](https://f-droid.org/repo/com.termux/en/icon_7AxM2qJ.png)](https://f-droid.org/packages/com.termux/)

*Note: Ensure you download version 0.118.0.*

### 2. Install Termux:X11

Download and install Termux:X11 from F-Droid:

[![Termux:X11](https://f-droid.org/repo/com.termux.x11/en/icon.png)](https://f-droid.org/packages/com.termux.x11/)

### 3. Install InputBridge

Download and install InputBridge:

[![InputBridge](https://github.com/HorizonEmuTeam/Horizon-Emu/raw/main/InputBridge_v0.1.9.9.apk)](https://github.com/HorizonEmuTeam/Horizon-Emu/blob/main/InputBridge_v0.1.9.9.apk)

### 4. Install BoxWine

After installing the above applications, open Termux and execute the following command to install BoxWine:

```bash
curl -s -o ~/x https://raw.githubusercontent.com/ShephardOS/BoxWine/main/install

