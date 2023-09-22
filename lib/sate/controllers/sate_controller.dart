import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController setname = TextEditingController();
  TextEditingController setname2 = TextEditingController();
  TextEditingController setkey = TextEditingController();
  TextEditingController setvalue = TextEditingController();

  RxString nama = "".obs;
  RxBool turn = RxBool(true);
  RxList<String> listname = RxList<String>([]);
  RxInt siswa = 0.obs;
  RxMap<String, String> listmapel = RxMap<String,String>({});

  void setName(String nm) {
    nama.value = nm;
    print(nama.value);
  }

  void isOpen(value){
    turn(value);
    print(isOpen);
  }

  void addSiswa(String nama) {
    listname.add(nama);
  }

  void addMapel(String no,String mp) {
    listmapel[no] = mp;
  }

  void IncreaseSiswa(){
    siswa.value++;
}
  void DecreaseSiswa(){
    siswa.value--;
  }

}
