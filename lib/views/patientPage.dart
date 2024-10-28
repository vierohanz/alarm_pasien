import 'package:alarm_pasien/controllers/patientController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class patientPage extends StatelessWidget {
  final patientC = Get.put(patientController());
  patientPage({super.key});
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;
    final wp = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: EdgeInsets.only(top: hp * 0.05),
        height: hp,
        width: wp,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: hp * 0.28,
              child: Row(
                children: [
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_1.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Obx(
                          () => ElevatedButton(
                              onPressed: () => patientC.ledControlRaena,
                              child: Container(
                                height: hp * 0.02,
                                width: wp * 0.2,
                                child: Center(
                                  child: Text(
                                    "Raena",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: hp * 0.02),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_2.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: hp * 0.02,
                              width: wp * 0.2,
                              child: Center(
                                child: Text(
                                  "Dina",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: hp * 0.02),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: hp * 0.28,
              child: Row(
                children: [
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_3.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: hp * 0.02,
                              width: wp * 0.2,
                              child: Center(
                                child: Text(
                                  "Vina",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: hp * 0.02),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_4.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: hp * 0.02,
                              width: wp * 0.2,
                              child: Center(
                                child: Text(
                                  "Lala",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: hp * 0.02),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: hp * 0.28,
              child: Row(
                children: [
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_5.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: hp * 0.02,
                              width: wp * 0.2,
                              child: Center(
                                child: Text(
                                  "Beta",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: hp * 0.02),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    width: wp * 0.5,
                    child: Column(
                      children: [
                        Container(
                          height: hp * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/patient_6.png"),
                                  fit: BoxFit.contain)),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Container(
                              height: hp * 0.02,
                              width: wp * 0.2,
                              child: Center(
                                child: Text(
                                  "Fuma",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: hp * 0.02),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}