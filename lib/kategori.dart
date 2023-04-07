import 'package:basitdeneme/urun_detay.dart';
import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  final String kategori;

  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  State<Kategori> createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;

  void initState() {
    super.initState();

    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti("İnek Sütü","15 TL","https://www.gunlukdogalsut.com/userfiles/dogal-sut-goztepe(1).jpg",mevcut: true),
        urunKarti("Manda Sütü","25 TL","https://media-cdn.t24.com.tr/media/stories/2016/11/raw_manda-turu-kaybolabilir_804791064.jpg",mevcut:  true),
        urunKarti("Biberli Kaşar Peynir","100 TL","https://instagram.fesb3-1.fna.fbcdn.net/v/t51.2885-15/278379516_692703988715136_7708869256482701157_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=B3g1E1bpawUAX8DRSNz&tn=HBrK7XCwS7DyQEwu&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgxNTAwNjgyMjMyNzU5MjAwNQ%3D%3D.2-ccb7-4&oh=00_AT_77rKAZctrqALeZ66_oAJtuwBU-wuXcfyi7sz6DdPMsQ&oe=62811978&_nc_sid=30a2ef",mevcut:  true),
        urunKarti("Doğal Tereyağı","90 TL","https://instagram.fesb3-1.fna.fbcdn.net/v/t51.2885-15/278381107_2033276016858984_1953039944723468279_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-1.fna.fbcdn.net&_nc_cat=100&_nc_ohc=s6oRJjsGeSwAX-LsKRu&edm=AABBvjUBAAAA&ccb=7-4&ig_cache_key=MjgxNjIxNDk4MjU2ODYyNzU2MQ%3D%3D.2-ccb7-4&oh=00_AT_hpdi_rBQYa4g0d7kQhBz4H29HYS79An9fc_RWLjSXKw&oe=628062A8&_nc_sid=83d603",mevcut:  true),

      ];
    }
    if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti("Sucuk","150Tl","https://instagram.fesb3-2.fna.fbcdn.net/v/t51.2885-15/278959082_4362980913805494_4214579267398377760_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=qqgTzfvuGkAAX_shiWI&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgyMjcwODk0MDE0NDM4MzA1Ng%3D%3D.2-ccb7-4&oh=00_AT9MjMsCLbJQ3V0nIa8Ev9OW4vPdB8qQBhMVY-8VCtUCcA&oe=6281316C&_nc_sid=30a2ef",mevcut:  true),
        urunKarti("Gezen Tavuk","70Tl","https://instagram.fesb3-2.fna.fbcdn.net/v/t51.2885-15/277416343_1119163208871642_7643291584794621062_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=B4EPaPKqyeIAX8BTYnV&tn=HBrK7XCwS7DyQEwu&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgwMjUzMzA1NzQxNzY2MTEyMQ%3D%3D.2-ccb7-4&oh=00_AT9ULjPz3SfBrRaODA4BJumpXyPZz6fMa14Wu8bSZpqcQg&oe=62811086&_nc_sid=30a2ef",mevcut:  true),

      ];
    }
    if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti("Köy Yumurtası","60Tl","https://instagram.fesb3-1.fna.fbcdn.net/v/t51.2885-15/277326592_964522467529787_5083853977585852781_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-1.fna.fbcdn.net&_nc_cat=111&_nc_ohc=mSliQG1rpdUAX-n8qnO&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgwMjUzMjQ1MzcwNjM1NzM5NQ%3D%3D.2-ccb7-4&oh=00_AT9anZoBWjQVcc9EtbdKv_ee4vqAUfDhwD6CkMVpeloufA&oe=627FCEDF&_nc_sid=30a2ef"),
        urunKarti("Gemlik Zeytin","50Tl","https://instagram.fesb3-2.fna.fbcdn.net/v/t51.2885-15/277293354_681052503114434_7309861289246546779_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=bpFOcxFKLoQAX_tQq9g&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgwMjUzMzY1MDI5MDkzMDE4OQ%3D%3D.2-ccb7-4&oh=00_AT84Bzi8zxJyG_nPaQEVnlhM3pn5ADddaIG_DQ0Fd0K7xA&oe=627F8BAA&_nc_sid=30a2ef"),
        urunKarti("Bal","100Tl","https://instagram.fesb3-1.fna.fbcdn.net/v/t51.2885-15/277239459_1116894605779546_8582880149161309591_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=MiWYSLAwBsgAX_z3y1w&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgwMjUzNDA5ODA0OTU2NTQ5NA%3D%3D.2-ccb7-4&oh=00_AT8F2nHZyHOi5A_BazmRmsK42xuPPC7aDcv-xZR3vclPbQ&oe=627FB593&_nc_sid=30a2ef"),
        urunKarti("Polen Balı","100Tl","https://instagram.fesb3-1.fna.fbcdn.net/v/t51.2885-15/277239459_1116894605779546_8582880149161309591_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fesb3-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=MiWYSLAwBsgAX_z3y1w&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgwMjUzNDA5ODA0OTU2NTQ5NA%3D%3D.2-ccb7-4&oh=00_AT8F2nHZyHOi5A_BazmRmsK42xuPPC7aDcv-xZR3vclPbQ&oe=627FB593&_nc_sid=30a2ef"),


      ];
    }
    if (widget.kategori == "Temizlik") {
      gosterilecekListe = [

      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimyolu,{bool mevcut = false}) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UrunDetay(
          fiyat: fiyat,isim: isim,resimYolu: resimyolu, mevcut: mevcut,
        )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 2,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimyolu,
              child: Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(resimyolu),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400]),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      //en boy oranı
      children: gosterilecekListe,
    );
  }
}
