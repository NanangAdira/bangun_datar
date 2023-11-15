import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool IsiHitungLuas = true.obs;
  int alas = 0;
  int sisi = 0;
  int tinggi = 0;

  final hasil = "".obs;

  void hitungLuas(){
    double hitung = alas * tinggi /2;
    hasil.value = "Hasil perhitungan dari $alas x $tinggi /2 = $hitung";
  }
  void hitungKeliling(){
    int hitung = sisi + sisi + sisi;
    hasil.value = "Hasil perhitungan dari $sisi + $sisi + $sisi  = $hitung";
    IsiHitungLuas.value = false;
  }
}