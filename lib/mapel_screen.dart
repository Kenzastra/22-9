import 'package:flutter/material.dart';
import 'package:gotcha/sate/controllers/sate_controller.dart';
import 'package:get/get.dart';

class MapelScreen extends StatelessWidget {
  const MapelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController Hc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Form"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: Hc.setkey,
              decoration: InputDecoration(label: Text("Insert Key Here")),
            ),
            TextField(
              controller: Hc.setvalue,
              decoration: InputDecoration(label: Text("Insert Value Here")),
            ),
            ElevatedButton(
                onPressed: () {
                  Hc.addMapel(Hc.setkey.text,Hc.setvalue.text);
                  Get.snackbar("List Data", "New Data Has Been Update",backgroundColor: Colors.white);
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
