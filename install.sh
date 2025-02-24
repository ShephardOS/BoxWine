
#!/bin/bash

rm ~/x
echo "                                                                     ";
echo "                                                                   / ";
echo "                                                                 /  ";
echo "     ____  .    ,    ____     ____     ____     ____     _____,/    ";
echo "   /'    )  \  /   /'    )--/'    )--/'    )--)'    )--/'    /      ";
echo " /(___,/'    \'   '---,   /'       /'    /' /'       /'    /        ";
echo "(__________/' \_(___,/   (___,/   (___,/' /'        (___,/(__        ";
echo "                                                                     ";
echo " by ShephardOS             ";
echo "                                                                     ";

echo "Installing termux-am"
pkg install termux-am -y &>/dev/null
yes | pkg install wget; clear
termux-setup-storage & sleep 4 &>/dev/null

while true; do
    if [ -d ~/storage/shared ]; then
        break
    else
        echo "Storage permission denied"
    fi
    sleep 3
done

echo "Installing termux packages"
apt-get clean
apt-get update >/dev/null 2>&1
apt-get -y --with-new-pkgs -o Dpkg::Options::="--force-confdef" upgrade >/dev/null 2>&1
pkg install x11-repo -y &>/dev/null
pkg install pulseaudio -y &>/dev/null
pkg install xwayland -y &>/dev/null
pkg install wget -y &>/dev/null
pkg install tsu -y &>/dev/null
pkg install root-repo -y &>/dev/null
pkg install patchelf -y &>/dev/null
pkg install p7zip -y &>/dev/null
pkg install xorg-xrandr -y &>/dev/null
pkg install ncurses-utils -y &>/dev/null
pkg install hashdeep -y &>/dev/null
pkg install termux-x11-nightly -y &>/dev/null

if [ -e $PREFIX/glibc ]; then
    echo -n "Removing previous glibc. Continue? (Y/n) "
    read i
    if [ "$i" = "Y" ] || [ "$i" = "y" ]; then
        rm -rf $PREFIX/glibc
    else
        return 1
    fi
fi

echo "Installing BoxWine"

function wget-git-q {
    wget -q --retry-connrefused --tries=0 --header "PRIVATE-TOKEN: $PRIVATE_TOKEN" "https://gitlab.com/api/v4/projects/$PROJECT_ID/repository/files/$1/raw?ref=main" -O $2
    return $?
}

echo "Updating package manager"
mkdir -p $PREFIX/glibc/opt/package-manager/installed

echo "PRIVATE_TOKEN=glpat-kj--11qKof3MZXBayzRV
PROJECT_ID=64704412">$PREFIX/glibc/opt/package-manager/token

. $PREFIX/glibc/opt/package-manager/token
if ! wget-git-q "package-manager" "$PREFIX/glibc/opt/package-manager/package-manager"; then
    echo "Download failed"
    return 1
fi
. $PREFIX/glibc/opt/package-manager/package-manager
sync-all

sync-package wine-9.3-vanilla-wow64

ln -sf $PREFIX/glibc/opt/scripts/BoxWine $PREFIX/bin/BoxWine
echo "To start - type \"BoxWine\""

