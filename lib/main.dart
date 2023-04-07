import 'package:basitdeneme/sepetim.dart';
import 'package:basitdeneme/urunler.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
      title: "projem",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifPageNo = 0;

  @override
  void initState() {
    super.initState();
    //List _icerikler = [Text("içerik 1"), Text("içerik 2")];
  }

  List _icerikler = [Urunler(), Sepetim()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.lightGreen,
        title: Text(
          "ZEYTUNİ",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green[900]),
        ),
        centerTitle: true,
      ),
      body: _icerikler[_aktifPageNo],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifPageNo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Ürünler"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Sepetim"),
        ],
        onTap: (int tiklananButonNo) {
          setState(() {
            _aktifPageNo = tiklananButonNo;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0), //
          children: <Widget>[
            //çekmece başlığı
            UserAccountsDrawerHeader(
              accountName: Text("Ömer Faruk Taş"),
              accountEmail: Text("omerftas0@gmail.com"),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://instagram.fesb3-2.fna.fbcdn.net/v/t51.2885-19/278858377_1348781018944154_7874777744506066126_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fesb3-2.fna.fbcdn.net&_nc_cat=102&_nc_ohc=1dVCkmHK4s8AX_PiOLv&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT8rU-BR6Kyk4oEJ4MnwZGP3zvggT-ZMScfiwO37tAXB2A&oe=6280CEFD&_nc_sid=7bff83",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            ListTile(title: Text("Siparişlerim"), onTap: () {}),
            ListTile(title: Text("İndirimlerim"), onTap: () {}),
            ListTile(title: Text("Ayarlar"), onTap: () {}),
            ListTile(
                title: Text("Çıkış Yap"),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
