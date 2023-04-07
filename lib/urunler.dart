import 'package:basitdeneme/kategori.dart';
import 'package:flutter/material.dart';

class Urunler extends StatefulWidget {
  const Urunler({Key? key}) : super(key: key);

  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin{
  TabController? televizyonkontrolcusu;
  @override
  void initState(){
    televizyonkontrolcusu  = TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          isScrollable: true, // sekmelerin yatayda kayabilmesini sağlar.
          indicatorColor: Colors.red[400],
            labelColor: Colors.red[400],
            unselectedLabelColor: Colors.grey,
            controller: televizyonkontrolcusu,
            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
            tabs: [
          Tab(child: Text("Süt Ürünleri"),),
          Tab(child: Text("Et Ürünleri"),),
          Tab(child: Text("Doğal Ürünler"),),
          Tab(child: Text("Şu Anda Boş"),),
        ]),
        Expanded(

          child: TabBarView(
            controller: televizyonkontrolcusu,
            children: [
              Kategori(kategori: "Temel Gıda",),
              Kategori(kategori: "Şekerleme",),
              Kategori(kategori: "İçecekler",),
              Kategori(kategori: "Temizlik"),
              ],
          ),
        )
      ],
    );
  }
}
