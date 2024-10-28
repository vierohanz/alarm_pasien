import 'package:flutter/material.dart';
import './patientPage.dart';
import './nursePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:bottom_bar/bottom_bar.dart';
import '../controllers/bottomBarController.dart';

class bottomBar extends StatelessWidget {
  final bottomBarC = Get.put(bottomBarController());

  @override
  Widget build(BuildContext context) {
    final hp = MediaQuery.of(context).size.height;
    final wp = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: hp,
        child: PageView(
          controller: bottomBarC.pageController,
          children: [patientPage(), nursePage()],
          onPageChanged: (index) {
            bottomBarC.changePage(index);
          },
        ),
      ),
      bottomNavigationBar: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 2,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: BottomBar(
                selectedIndex: bottomBarC.model.currentPage.value,
                onTap: (int index) {
                  bottomBarC.changePage(index);
                },
                items: <BottomBarItem>[
                  BottomBarItem(
                    icon: Icon(Icons.people),
                    title: Text('Patient'),
                    activeColor: Colors.green,
                  ),
                  BottomBarItem(
                    icon: FaIcon(FontAwesomeIcons.userNurse),
                    title: Text('Nurse'),
                    activeColor: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
