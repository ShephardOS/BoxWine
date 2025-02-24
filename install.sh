
#!/bin/bash

rm -f ~/x clear echo " by ShephardOS "

echo "Installing termux-am..." pkg install termux-am -y &>/dev/null pkg install wget -y &>/dev/null clear

termux-setup-storage &>/dev/null sleep 4

while true; do if [ -d ~/storage/shared ]; then break else echo "Storage permission denied" fi sleep 3 done

echo "Installing termux packages..." apt-get clean apt-get update >/dev/null 2>&1 apt-get -y --with-new-pkgs -o Dpkg::Options::="--force-confdef" upgrade >/dev/null 2>&1 pkg install x11-repo -y &>/dev/null pkg install pulseaudio -y &>/dev/null pkg install xwayland -y &>/dev/null pkg install tsu -y &>/dev/null pkg install root-repo -y &>/dev/null pkg install patchelf -y &>/dev/null pkg install p7zip -y &>/dev/null pkg install xorg-xrandr -y &>/dev/null pkg install ncurses-utils -y &>/dev/null pkg install hashdeep -y &>/dev/null pkg install termux-x11-nightly -y &>/dev/null

if [ -e "$PREFIX/glibc" ]; then echo -n "Removing previous glibc. Continue? (Y/n) " read -r i if [ "$i" = "Y" ] || [ "$i" = "y" ]; then rm -rf "$PREFIX/glibc" else exit 1 fi fi

echo "Installing BoxWine..." mkdir -p "$PREFIX/glibc/opt/package-manager/installed"

echo "PRIVATE-TOKEN=glpat-kj--11qKof3MZXBayzRV PROJECT_ID=64704412" > "$PREFIX/glibc/opt/package-manager/token"

. "$PREFIX/glibc/opt/package-manager/token"

wget -q --retry-connrefused --tries=0 --header "PRIVATE-TOKEN: $PRIVATE-TOKEN" 
"https://gitlab.com/api/v4/projects/$PROJECT_ID/repository/files/package-manager/raw?ref=main" 
-O "$PREFIX/glibc/opt/package-manager/package-manager"

if [ $? -ne 0 ]; then echo "Download failed" exit 1 fi

. "$PREFIX/glibc/opt/package-manager/package-manager" sync-all

sync-package wine-9.3-vanilla-wow64

ln -sf "$PREFIX/glibc/opt/scripts/boxwine" "$PREFIX/bin/boxwine" echo "To start - type 'boxwine'"

Curl command to download and execute the script

echo "To install, run:" echo "curl -sSL https://yourserver.com/install_boxwine.sh | bash"


