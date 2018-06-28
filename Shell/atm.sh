#!/bin/bash

echo "Lutfen cekmek istediginiz miktari yaziniz="
read para_miktar
let "mod=$para_miktar%10"
echo $mod
if [ $mod -eq 0 ]
	then
		let "yuz=$sayi/100"
		let "sayi=$sayi-yuz*100"
		let "elli=$sayi/50"
		let "sayi=$sayi-elli*50"
		let "yirmi=$sayi/20"
		let "sayi=$sayi-yirmi*20"
		let "on=$sayi/10"
		let "sayi=$sayi-on*10"
		echo "$yuz tane yuzluk"
		echo "$elli tane ellilik"
		echo "$yirmi tane yirmilik"
		echo "$on tane onluk"
	else
		echo "Yalnizca 10 ve katlari seklinde para giriniz"
fi
