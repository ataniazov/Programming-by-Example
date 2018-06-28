#!/bin/bash
echo $# $0 $1 $2

DIR="$1"

if [ $# -ne 1 ]
then
	echo "Kullanimi: $0 {dizin adi}"
	exit 1
fi

if [ -d "$DIR" ]
then
	echo "$DIR Bu dizin sistem var!"
else
	echo "$Dir dizin bulunamadi!"
	echo -n "Dizini yaratmak istermisiniz [E/H]="
	read cevap
	if [ "$cevap" == "E" ];
	then
		mkdir $1
		echo "Dizin yaratildi..."
	else
		echo "Istemediginiz icin dizin yaratilmadi..."
	fi
fi
