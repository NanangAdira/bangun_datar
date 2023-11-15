import 'package:bangun_datar_app/pages/lingkaranpage.dart';
import 'package:bangun_datar_app/pages/persegipage.dart';
import 'package:bangun_datar_app/pages/persegipanjang.dart';
import 'package:bangun_datar_app/pages/segitigapage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
          children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
          },
            child: CustomMenu(imageAssets: "assets/Persegi.png",title: "Persegi")),

            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPanjang()));
                },
                child: CustomMenu(imageAssets: "assets/persegipanjang.png",title: "Persegi Panjang")),

            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LingkaranPage()));
                },
                child: CustomMenu(imageAssets: "assets/lingkaran.png",title: "Lingkaran")),

            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SegitigaPage()));
                },
                child: CustomMenu(imageAssets: "assets/segitiga.png",title: "Segitiga")),

      ]),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets, height: 100, width: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
