import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int tinggi = 0;
  int alas =  0;
  final hasil= "".obs;
  final angka= "".obs;

  void hitungLuas(){
    int hitung = alas * tinggi;
  hasil.value = "Hasil Perhitungan Luas dari $alas dan $tinggi adalah $hitung";
  angka.value = "$hitung";
}
void hitungKeliling(){
int hitung = alas+alas+alas;
hasil.value = "Hasil Perhitungan Luas dari $alas dan $tinggi adalah $hitung";
angka.value = "$hitung";
}
}