import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {

  //bu sayfada her ürün için farklı detaylar gösterilecek o yüzden değişkenleri tanımlayalım

  final String isim;
  final String fiyat;
  final String resimYolu;
  final bool mevcut ;
  const UrunDetay({super.key, required this.isim, required this.fiyat, required this.resimYolu, required this.mevcut});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Hero(tag: resimYolu,child: Image.network(resimYolu)),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40,
                ))
          ],
        ),
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Bu bölümde ürün açıklamaları bulunacak ve ürünü öven bilgiler verilecek",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 50,
              decoration: BoxDecoration(
                color: mevcut ? Colors.red[400] : Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  mevcut ? "Sepete Ekle":"Stokta Yok",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
