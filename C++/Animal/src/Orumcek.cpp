/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#include "Orumcek.h"

Orumcek::Orumcek() {
	//ctor
	cout << "\"Orumcek\" nesnesi olusturuldu!" << endl;
}

Orumcek::Orumcek(string isim, int agirlik, bool zehirliMi) {
	//ctor
	cout << "\"Orumcek\" nesnesi olusturuldu!" << endl;
	SetIsim(isim);
	SetAgirlik(agirlik);
	SetZehirliMi(zehirliMi);
}

Orumcek::~Orumcek() {
	//dtor
	cout << "\"" << GetIsim() << "\" isimli \"Orumcek\" nesnesi yok edildi!" << endl;
}

bool Orumcek::GetZehirliMi() {
	return zehirliMi;
}

void Orumcek::SetZehirliMi(bool zehirliMi) {
	this->zehirliMi = zehirliMi;
}

void Orumcek::ozellikler() {
	cout << "\"" << GetIsim() << "\" isimli \"Balik\" nesnesinin ozellikleri:" << endl;
	Hayvan::ozellikler();
	cout << "\tZehirli mi: "
        << ((GetZehirliMi()) ? "Evet" : "Hayir")
        << endl;
}
