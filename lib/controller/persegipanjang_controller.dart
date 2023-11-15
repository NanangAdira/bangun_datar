import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PersegiPanjangController extends GetxController{
  int p = 0;
  int l = 0;
  final hasil = "".obs;

  void hitungLuas(){
    int hitung = p * l;
    hasil.value = "Hasil perhitungan dari $p x $l = $hitung";
  }
  void hitungKeliling(){
    int hitung = 2 * l + 2 * p;
    hasil.value = "Hasil perhitungan dari 2 * ($p + $l) = $hitung";
  }
}