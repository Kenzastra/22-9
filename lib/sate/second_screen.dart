import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/sate_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController Hc = Get.find();
    var data = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  width: 100,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.maxFinite, 50),
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              Get.toNamed("/NameScreen");
                            },
                            child: Text(
                              "Add Siswa",
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.maxFinite, 50),
                                backgroundColor: Colors.white,
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              Get.toNamed("/MapelScreen");
                            },
                            child: Text("Add Mapel",
                                style: TextStyle(color: Colors.black))),
                      )
                    ],
                  ),
                ));
              },
              icon: Icon(Icons.list))
        ],
      ),
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${Hc.nama.value}",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.green[300]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Obx(() =>
                                  Text("Jumlah Siswa : ${Hc.siswa.value}"))),
                          GestureDetector(
                            onTap: () { if (Hc.siswa.value == 37);
                              Hc.IncreaseSiswa();},
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                              onTap: () {
                                Hc.DecreaseSiswa();
                              },
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 32),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() => Text(
                                Hc.turn.value ? 'Open' : 'Close',
                                style: Hc.turn.value
                                    ? TextStyle(color: Colors.green[900])
                                    : TextStyle(color: Colors.red[900]),
                              )),
                          Obx(() => Switch(
                                value: Hc.turn.value,
                                activeColor: Colors.pinkAccent,
                                onChanged: (value) => {Hc.isOpen(value)},
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, left: 10),
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Nama-nama Siswa")],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.maxFinite,
                height: 200,
                decoration: BoxDecoration(color: Colors.green[300]),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Obx(() => ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: Hc.listname.length,
                          itemBuilder: (context, index) {
                            return Text(
                              Hc.listname.value[index],
                              style: TextStyle(fontSize: 20),
                            );
                          })),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.maxFinite,
                height: 50,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Mata Pelajaran")],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.maxFinite,
                height: 200,
                color: Colors.green[300],
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        children: [
                          Obx(() => ListView.builder(
                                shrinkWrap: true,
                                itemCount: Hc.listmapel.length,
                                itemBuilder: (context, index) {
                                  MapEntry listmapelEntry =
                                      Hc.listmapel.entries.elementAt(index);
                                  return Text("${listmapelEntry.key} ${listmapelEntry.value}", style: TextStyle(
                                    fontSize: 20
                                  ),);
                                },
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
              //
            ],
          )),
    );
  }
}
