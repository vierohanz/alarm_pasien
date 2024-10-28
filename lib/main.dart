import 'package:alarm_pasien/views/bottomBar.dart';
import './controllers/bottomBarController.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(mainApp());
}

class mainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => bottomBar(),
          binding: BindingsBuilder(() {
            Get.put(bottomBarController());
          }),
        ),
      ],
    );
  }
}
