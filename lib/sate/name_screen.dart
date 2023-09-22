import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gotcha/sate/controllers/sate_controller.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

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
              controller: Hc.setname2,
              decoration: InputDecoration(label: Text("Insert Name Here")),
            ),
            ElevatedButton(
                onPressed: () {
                  Hc.addSiswa(Hc.setname2.text);
                  Get.snackbar("List Data", "New Data Has Been Update",backgroundColor: Colors.white);
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
