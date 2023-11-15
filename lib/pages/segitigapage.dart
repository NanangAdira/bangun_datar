import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatelessWidget {
  SegitigaPage({super.key});
  final SegitigaController _segitigaController = Get.put(SegitigaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Segitiga Page"),
        ),
        body: Column(
          children: [
            Image.asset(
              "assets/Segitiga.png",
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Segitiga"),
            ),
            Text(
                "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk displaystyle (a)} yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value){
                  _segitigaController.alas=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "alas",
                    hintText: "Masukkan alas",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value){
                  _segitigaController.tinggi=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "tinggi",
                    hintText: "Masukkan tinggi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value){
                  _segitigaController.sisi=int.parse(value);
                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "sisi",
                    hintText: "Masukkan sisi",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){
                    _segitigaController.hitungLuas();
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        "Hitung Luas",
                        style: TextStyle(color: Colors.white),
                      )),
                ),

                ElevatedButton(onPressed: (){
                  _segitigaController.hitungKeliling();
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text("Hitung Keliling", style: TextStyle(color: Colors.white),
                    )),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() => Text(_segitigaController.hasil.value,style: TextStyle(color: Colors.green))),
            )
          ],
        ));
  }
}
