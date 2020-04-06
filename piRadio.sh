#!/bin/bash
echo lampp server starting
#bu dosya otomatik olarak pi boarda enerji verilip çalıştırmak için
#1- bu bash script /etc/init.d altına kopyalanmalı
#2- script executable olmalı
#3- her açılışta default çalışması için "sudo update-rc.d piRadio.py defaults" komutu girilmeli

#raspberyy password girilecek 
echo "********" | sudo -S service apache2 restart
sleep 1
#runnable jar dosyası nerdeyse yolunu vermek gerekir.
cd /opt/piRadio
java -jar piRadio.jar 


