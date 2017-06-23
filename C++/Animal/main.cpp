/**
 * Ata Niyazov
 * 130201108
 *
 * Programlama Dilleri Presipleri
 * Ödev 3
 *
 * Canlıları temsil eden sınıfları oluşturma
 */

#include <iostream>

#include <Hayvan.h>
#include <Kopek.h>
#include <Balik.h>
#include <Orumcek.h>

using namespace std;

int main() {

	// "Hayvan" sınıfı SANAL SINIF olduğundan yapmak yasaktır!!!
//    Hayvan hayvan("hayvan_isimi", 100, 1);
//    hayvan.ozellikler();

	cout << "Ata Niyazov "
		 << "130201108"
		 << endl << endl
		 << "Programlama Dilleri Presipleri"
		 << endl
		 << "Ödev 3"
		 << endl
		 << "Canlıları temsil eden sınıfları oluşturma"
		 << endl;

	cout << endl;


	Kopek aslan("Aslan", 60, 4);
	aslan.ozellikler();

	cout << endl;

	Kopek badem;
	badem.SetIsim("Badem");
	badem.SetAgirlik(30);
	badem.SetPenceSayisi(4);
	badem.ozellikler();

	cout << endl;

	Balik nemo("Nemo", 3, 2);
	nemo.ozellikler();

	cout << endl;

	Balik tomurcuk;
	tomurcuk.SetIsim("Tomurcuk");
	tomurcuk.SetAgirlik(5);
	tomurcuk.SetSolungacSayisi(4);
	tomurcuk.ozellikler();

	cout << endl;

	Orumcek haskell("Haskell", 11, true);
	haskell.ozellikler();

	cout << endl;

	Orumcek curry;
	curry.SetIsim("Curry");
	curry.SetAgirlik(9);
	curry.SetZehirliMi(false);
	curry.ozellikler();

	cout << endl;
	cout << "Merhaba, Dunya!" << endl;
	cout << endl;
	cout << "Burada uygulama bitiyor!" << endl;
	cout << endl;
	cout << "Asagida, olusturulmus olan nesnelerin destructor'lari calisacaktir!" << endl;
	cout << endl;

	return 0;
}
