/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#ifndef BALIK_H
#define BALIK_H

#include <Hayvan.h>

class Balik : public Hayvan {
public:
	Balik();
	Balik(string isim, int agirlik, int solugacSayisi);
	~Balik();

	int GetSolungacSayisi();
	void SetSolungacSayisi(int solungacSayisi);

	void ozellikler();

protected:
private:
	int solungacSayisi;
};

#endif // BALIK_H
