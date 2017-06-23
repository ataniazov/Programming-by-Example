/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#include "Hayvan.h"

Hayvan::Hayvan() {
	//ctor
//	this->isim = isim;
//	this->agirlik = agirlik;
//	this->ayakSayisi = ayakSayisi;
}

Hayvan::~Hayvan() {
	//dtor
	cout << "\"Hayvan\" nesnesi yok edildi!" << endl << endl;
}

string Hayvan::GetIsim() {
	return isim;
}

void Hayvan::SetIsim(string isim) {
	this->isim = isim;
}

int Hayvan::GetAgirlik() {
	return agirlik;
}

void Hayvan::SetAgirlik(int agirlik) {
	this->agirlik = agirlik;
}

void Hayvan::ozellikler() {
	cout << "\tIsim: " << isim << endl;
	cout << "\tAgirlik: " << agirlik << endl;
//	cout << "\tAyak sayisi: " << ayakSayisi << endl;
}
