#!/bin/bash

#BlackBabun

echo "

 ____  __      __    ___  _  _  ____    __    ____  __  __  _  _ 
(  _ \(  )    /__\  / __)( )/ )(  _ \  /__\  (  _ \(  )(  )( \( )
 ) _ < )(__  /(__)\( (__  )  (  ) _ < /(__)\  ) _ < )(__)(  )  ( 
(____/(____)(__)(__)\___)(_)\_)(____/(__)(__)(____/(______)(_)\_)

"

echo -e "Este es un software libre. Distribuciones y modificaciones bajo GPLv2"
echo -e "Bugs a blackbabun (at) netsec.com.ar"
echo -e "https://github.com/BlackBabun/babun"
sleep 5


echo "Instalación de herramientas"

#hydra
# git clone https://github.com/vanhauser-thc/thc-hydra.git
# nmap
# wget https://nmap.org/dist/nmap-7.30-win32.zip
# nikto
# wget https://github.com/sullo/nikto/archive/master.zip
# dnsmap
# wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/dnsmap/dnsmap-0.30.tar.gz
# sqlmap
# git clone https://github.com/sqlmapproject/sqlmap.git
# zaproxy
# wget https://github.com/zaproxy/zaproxy/releases/download/2.5.0/ZAP_2.5.0_Cross_Platform.zip
# john
# wget http://www.openwall.com/john/j/john-1.8.0.tar.xz

cd ~
mkdir tools2

#hydra
echo "Desea instalar Hydra? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
		cd tools2
		git clone https://github.com/vanhauser-thc/thc-hydra.git
		mv thc-hydra hydra
		rm -Rf thc-hydra
		cd hydra/
			./configure
			make
			make install
			cp -r hydra /usr/bin/
			echo 'alias hydra="/usr/bin/hydra.exe"' >> ~/.bash_profile
		echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
		sleep 3
fi

#nmap 
echo "Desea instalar Nmap? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
wget https://nmap.org/dist/nmap-7.30-win32.zip
unzip nmap-7.30-win32.zip
mv nmap-7.30 nmap
rm -Rf nmap-7.30*
cp -r nmap /usr/bin/
echo 'alias nmap="/usr/bin/nmap/nmap.exe"' >> ~/.bash_profile
echo -e "*******************************************************************************************************************"
echo -e	"*** Para que nmap funcione debes instalar como admin C:\Users\NameUser\.babun\cygwin\bin\nmap\npcap-0.10-r2.exe ***"
echo -e "*******************************************************************************************************************"
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#dnsmap
echo "Desea instalar dnsmap? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
git clone https://github.com/makefu/dnsmap.git
cd dnsmap/
gcc -Wall dnsmap.c -o dnsmap.exe
make
cd ~/tools2
cp -r dnsmap /usr/bin/
echo 'alias dnsmap="/usr/bin/dnsmap/dnsmap.exe"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi


#nikto
echo "Desea instalar nikto? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
git clone https://github.com/sullo/nikto.git
cp -r nikto/ /usr/bin/
echo 'alias nikto="/usr/bin/nikto/program/nikto.pl"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#sqlmap
echo "Desea instalar sqlmap? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
git clone https://github.com/sqlmapproject/sqlmap.git
cp -r sqlmap/ /usr/bin/
echo 'alias sqlmap="/usr/bin/sqlmap/sqlmap.py"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#zaproxy
echo "Desea instalar zaproxy? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
wget https://github.com/zaproxy/zaproxy/releases/download/2.5.0/ZAP_2.5.0_Cross_Platform.zip
unzip ZAP_2.5.0_Cross_Platform.zip
mv ZAP_2.5.0 zap
mv ~/blackbabun/blackbabun/init-zap.sh zap/
cp -r zap/ /usr/bin/
rm -Rf ZAP_2.5.*
echo 'alias zaproxy="/usr/bin/zap/init-zap.sh"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#john
echo "Desea instalar John the Ripper? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
wget http://www.openwall.com/john/j/john-1.8.0.tar.xz
tar -xJf john-1.8.0.tar.xz
mv john-1.8.0 john
rm -Rf john-1.*
cp -r john/ /usr/bin/
cd /usr/bin/john/src
make
make clean SYSTEM
make clean generic
cd ~/tools2
echo 'alias john="/usr/bin/john/run/john.exe"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#Fierce
echo "Desea instalar Fierce? (Si=1 / No=0)"
read r
if [ $r == 1 ]
	then
cd ~
cd tools2
git clone https://github.com/davidpepper/fierce-domain-scanner.git
mv fierce-domain-scanner fierce
cp -r fierce /usr/bin/
echo 'alias fierce="/usr/bin/fierce/fierce.pl"' >> ~/.bash_profile
echo -e "*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*x*"
sleep 3
fi

#Eliminamos contenido excedente.
cd ~
rm -Rf tools2
rm -Rf blackbabun
echo -e "                                                                                                                    "
echo -e "                                                                                                                    "
echo -e "                                                                                                                    "
echo -e "***********************************************************************************************************************"
echo -e	"Recordá que para que nmap funcione debes instalar como admin C:\Users\NameUser\.babun\cygwin\bin\nmap\npcap-0.10-r2.exe"
echo -e "***********************************************************************************************************************"
sleep 3
echo -e "                                                                                                                    "
echo -e "                                                                                                                    "
echo -e "                                                                                                                    "
echo "Por favor reiniciá babun"
sleep 3
exit

exit
