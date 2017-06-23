/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#ifndef KOPEK_H
#define KOPEK_H

#include <Hayvan.h>

class Kopek : public Hayvan {
public:
	Kopek();
	Kopek(string isim, int agirlik, int penceSayisi);
	~Kopek();

	int GetPenceSayisi();
	void SetPenceSayisi(int penceSayisi);

	void ozellikler();

protected:
private:
	int penceSayisi;
};

#endif // KOPEK_H
