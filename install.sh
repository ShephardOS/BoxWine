                                                   
#!/bin/bash

rm ~/x echo "                                                                     " echo "                                                                   / " echo "                                                                 /  " echo "       .    ,                        ,/    " echo "   /'    )  \  /   /'    )--/'    )--/'    )--)'    )--/'    /      " echo " /(,/'    '   '---,   /'       /'    /' /'       /'    /        " echo "(/' _(,/   (,/   (,/' /'        (,/(        " echo "                                                                     " echo " by ShephardOS             " echo "                                                                     "

echo "Installing termux-am" pkg install termux-am -y &>/dev/null yes | pkg install wget &>/dev/null clear termux-setup-storage & sleep 4 &>/dev/null

while true; do if [ -d ~/storage/shared ]; then break else echo "Storage permission denied" fi sleep 3 done

echo "Installing termux packages" apt-get clean apt-get update >/dev/null 2>&1 apt-get -y --with-new-pkgs -o Dpkg::Options::="--force-confdef" upgrade >/dev/null 2>&1 pkg install -y x11-repo pulseaudio xwayland wget tsu root-repo patchelf p7zip xorg-xrandr ncurses-utils hashdeep termux-x11-nightly &>/dev/null

if [ -e $PREFIX/glibc ]; then echo -n "Removing previous glibc. Continue? (Y/n) " read i if [ "$i" = "Y" ] || [ "$i" = "y" ]; then rm -rf $PREFIX/glibc else exit 1 fi fi

echo "Installing BoxWine"

function wget-git-q { wget -q --retry-connrefused --tries=0 --header "PRIVATE-TOKEN: glpat-kj--11qKof3MZXBayzRV" "https://gitlab.com/api/v4/projects/$PROJECT_ID/repository/files/$1/raw?ref=main" -O $2 return $? }

echo "Updating package manager" mkdir -p $PREFIX/glibc/opt/package-manager/installed

echo -e "PRIVATE-TOKEN=glpat-kj--11qKof3MZXBayzRV\nPROJECT_ID=64704412" > $PREFIX/glibc/opt/package-manager/token

. $PREFIX/glibc/opt/package-manager/token if ! wget-git-q "package-manager" "$PREFIX/glibc/opt/package-manager/package-manager"; then echo "Download failed" exit 1 fi

. $PREFIX/glibc/opt/package-manager/package-manager sync-all

sync-package wine-9.3-vanilla-wow64

ln -sf $PREFIX/glibc/opt/scripts/boxwine $PREFIX/bin/boxwine echo "To start - type "boxwine""

