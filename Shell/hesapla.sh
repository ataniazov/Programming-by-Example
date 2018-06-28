#!/bin/bash
# ./hesapla sayi1 sayi2 islem

if [ $# -ne 3 ]; then
	exit 1
fi

let sonuc="$1 $3 $2"
echo "$1 $3 $2 = $sonuc"
