#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED} 
______   ______   ______  _______  ______  ______  _______  ______  ______  
| |  | \ | |  | | | |  \ \   | |   | |     / |        | |   | |     | |  | \ 
| |__|_/ | |__| | | |  | |   | |   | |---- '------.   | |   | |---- | |__| | 
|_|      |_|  |_| |_|  |_|   |_|   |_|____  ____|_/   |_|   |_|____ |_|  \_\ 
echo -e "${RED}                                                      ~ Tools for Hacking by Mr.X ${NC}"
echo ""
echo -e "${YELLOW} Telegram/Whomr_X | whatsapp.com/6287855190571 | Github.com/Whomrx666 ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install pantester, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/pantester"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/pantester"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory pantester Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/Whomrx666/pantester.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/pantester.py" '${1+"$@"}' > pantester;
chmod +x pantester;
sudo cp pantester /usr/bin/;
rm pantester;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing pantester !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
