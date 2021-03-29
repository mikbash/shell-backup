#!/bin/bash  
echo "Criando Pasta de Montagem"
sleep 03
sudo mkdir /media/wnc/hd
echo ""
echo "Montando partição"
sleep 03
sudo mount /dev/sda3 /media/wnc/hd
echo ""
echo "Montagem Finalizada"
echo ""
echo "Criando Diretorio de Usuário"
sleep 03
sudo mkdir /media/wnc/hd/wnc-backup
echo ""
echo "Preparando para copiar arquivos"
sleep 03
sudo cp -v -r /home/wnc/.run /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/.fonts /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/.themes /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Documentos /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Música /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Vídeos /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Dropbox /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Imagens /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Gimp /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/MeusApps-Java /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/Shell-Scripiting /media/wnc/hd/wnc-backup
sudo cp -v -r /home/wnc/inkscape-projetos /media/wnc/hd/wnc-backup
echo ""
echo "Listando Arquivos..."
sudo du -l -h /media/wnc/hd/wnc-backup
echo ""
echo "Backup Finalizado "
echo ""
echo "Desmontar partição ? [y] yes or [n] no"
read RESPOSTA
teste "$RESPOSTA" = "n" && exit
echo ""
sudo umount /dev/sda3 /media/wnc/hd/
echo ""
sudo rm -v -d /media/wnc/hd
echo ""
echo "Para desmontar a unidade use este comando"
echo "sudo umount /dev/sda3 /media/wnc/hd/"
