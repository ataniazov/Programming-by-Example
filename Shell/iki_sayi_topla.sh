#!/bin/bash

echo "birinci sayiyi giriniz:"
read sayi1
echo "ikinci sayiyi giriniz:"
read sayi2
let "toplam=$sayi1+$sayi2"
echo "Toplam: $toplam"
typeset -i sonuc
sonuc=sayi1+sayi2
echo "Sonuc: $sonuc"
