/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#include "Kopek.h"

Kopek::Kopek() {
	//ctor
    cout << "\"Kopek\" nesnesi olusturuldu!" << endl;
}

Kopek::Kopek(string isim, int agirlik, int penceSayisi) {
	//ctor
    cout << "\"Kopek\" nesnesi olusturuldu!" << endl;
    SetIsim(isim);
    SetAgirlik(agirlik);
    SetPenceSayisi(penceSayisi);
}

Kopek::~Kopek() {
	//dtor
	cout << "\"" << GetIsim() << "\" isimli \"Kopek\" nesnesi yok edildi!" << endl;
}

int Kopek::GetPenceSayisi(){
    return penceSayisi;
}

void Kopek::SetPenceSayisi(int penceSayisi){
    this->penceSayisi = penceSayisi;
}

void Kopek::ozellikler() {
    cout << "\"" << GetIsim() << "\" isimli \"Kopek\" nesnesinin ozellikleri:" << endl;
    Hayvan::ozellikler();
	cout << "\tPence Sayisi: " << GetPenceSayisi() << endl;
}
