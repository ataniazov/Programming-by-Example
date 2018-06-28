#!/bin/bash

echo "Zaman bilgisini al:"
echo "Sistemden [0]"
echo "Kullanicidan [1]"

echo -n "Seciminiz: "
read choise

#echo $choise
if [ $choise -eq "0" ];
then
	echo -n "Sistem saati: "
	saat=$(date +"%H")
	dakika=$(date +"%M")
elif [ $choise -eq "1" ];
then
	echo -n "Saat giriniz: "
	read saat
	echo -n "Dakika giriniz: "
	read dakika
	echo -n "Kullanici saati: "
else
	echo "Hatali secim"
	exit 1
fi

echo $saat":"$dakika

echo "Aci:" $(((11 * $dakika - 60 * $saat) / 2))
