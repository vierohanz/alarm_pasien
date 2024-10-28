import 'package:alarm_pasien/controllers/patientController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class nursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final patientC = Get.put(patientController());
    final hp = MediaQuery.of(context).size.height;
    final wp = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: hp,
        width: wp,
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.only(top: hp * 0.05),
              height: hp * 0.3,
              child: Row(
                children: [
                  Container(
                    width: wp * 0.5,
                    height: hp,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/doctor.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GetBuilder<patientController>(
                    builder: (controller) {
                      return Container(
                        width: wp * 0.5,
                        height: hp,
                        child: Center(
                          child: Text(
                            "${controller.activeCount}", // Display active count
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: wp * 0.25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: GetBuilder<patientController>(
                builder: (controller) {
                  // Display a list of active messages below
                  return ListView.builder(
                    itemCount: controller.activeMessages.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(controller.activeMessages[index]),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
