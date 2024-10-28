import 'package:flutter/material.dart';
import 'package:get/get.dart';

class nursePage extends StatelessWidget {
  Widget build(BuildContext context) {
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
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: wp * 0.5,
                    height: hp,
                    child: Center(
                      child: Text(
                        "15",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: wp * 0.25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
