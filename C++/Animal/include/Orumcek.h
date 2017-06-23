/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#ifndef ORUMCEK_H
#define ORUMCEK_H

#include <Hayvan.h>

class Orumcek : public Hayvan {
public:
	Orumcek();
	Orumcek(string isim, int agirlik, bool zehirliMi);
	~Orumcek();

	bool GetZehirliMi();
	void SetZehirliMi(bool zehirliMi);

	void ozellikler();

protected:
private:
	bool zehirliMi;
};

#endif // ORUMCEK_H
