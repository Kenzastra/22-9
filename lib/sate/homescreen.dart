import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/sate_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController Hc = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sate Management"),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: Hc.setname,
                decoration: InputDecoration(label: Text("Nama")),
                onSubmitted: (value) {
                  Hc.setName(Hc.setname.text);
                  Get.snackbar("Nama", Hc.nama.value, colorText: Colors.white);
                  Get.defaultDialog(
                      title: "Nama",
                      middleText: Hc.nama.value,
                      radius: 10,
                      onCancel: () {},
                      onConfirm: () {
                        Get.toNamed("/SecondScreen",arguments: "Here your ordah!!");
                      });
                  Get.bottomSheet(
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.pink
                    ,borderRadius: BorderRadius.circular(50)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Nama: ${Hc.nama.value}",
                          style: TextStyle(fontSize: 25),
                        ),
                      ],
                    ),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
