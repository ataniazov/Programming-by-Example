/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#ifndef HAYVAN_H
#define HAYVAN_H

#include <iostream>
#include <string>

using namespace std;

class Hayvan {
public:
	Hayvan();
	~Hayvan();

	string GetIsim();
	void SetIsim(string isim);
	int GetAgirlik();
	void SetAgirlik(int agirlik);

	// "Hayvan" sınıfı SAF SANAL SINIF
	// Look at: Pure Abstract Class
	virtual void ozellikler() = 0;

protected:
private:
	string isim;
	int agirlik;
	int ayakSayisi;
};

#endif // HAYVAN_H
