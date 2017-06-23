/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#include "Balik.h"

Balik::Balik() {
	//ctor
	cout << "\"Balik\" nesnesi olusturuldu!" << endl;
}

Balik::Balik(string isim, int agirlik, int solugacSayisi) {
	//ctor
	cout << "\"Balik\" nesnesi olusturuldu!" << endl;
	SetIsim(isim);
	SetAgirlik(agirlik);
	SetSolungacSayisi(solugacSayisi);
}

Balik::~Balik() {
	//dtor
	cout << "\"" << GetIsim() << "\" isimli \"Balik\" nesnesi yok edildi!" << endl;
}

int Balik::GetSolungacSayisi() {
	return solungacSayisi;
}

void Balik::SetSolungacSayisi(int solungacSayisi) {
	this->solungacSayisi = solungacSayisi;
}

void Balik::ozellikler() {
	cout << "\"" << GetIsim() << "\" isimli \"Balik\" nesnesinin ozellikleri:" << endl;
	Hayvan::ozellikler();
	cout << "\tSolungac Sayisi: " << GetSolungacSayisi() << endl;
}
