import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PersegiPanjang extends StatelessWidget {
   PersegiPanjang({super.key});
  final PersegiPanjangController _persegipanjangController = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Panjang Page"),
      ),
        body: Column(
          children: [
            Image.asset(
              "assets/persegipanjang.png",
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Persegi Panjang"),
            ),
            Text(
                "Persegi panjang atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk displaystyle (a)} yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                onChanged: (value){
                  _persegipanjangController.p=int.parse(value);

                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Panjang",
                    hintText: "Masukkan Panjang",
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
                  _persegipanjangController.l=int.parse(value);

                },
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    labelText: "Lebar",
                    hintText: "Masukkan Lebar",
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
                    _persegipanjangController.hitungLuas();
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
                  _persegipanjangController.hitungKeliling();
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
              child: Obx(() => Text(_persegipanjangController.hasil.value,style: TextStyle(color: Colors.green))),
            )
          ],
        ));
  }
}