#!/bin/bash
clear
echo "Lutfen bir sayi giriniz="
read sayi
if [ $sayi -lt 100 ]
	then
		echo "Girdiginiz sayi 100'den kucuktur."
	else
		echo "Girdiginiz sayi 100 veya daha buyuktur."
fi

let karesi=$sayi*$sayi
echo "Karesi: $karesi" 
