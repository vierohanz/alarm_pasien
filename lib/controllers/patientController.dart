// controllers/patient_controller.dart
import 'package:alarm_pasien/models/patientModel.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';

class patientController extends GetxController {
  final DatabaseReference databaseRef =
      FirebaseDatabase.instance.ref('alarm-db');

  // Buat variabel pasien untuk setiap pasien yang ada di Firebase
  var patientM = <String, patientModel>{}.obs;

  @override
  void onInit() {
    super.onInit();
    _fetchPatientMData();
  }

  // Fungsi untuk mengambil data dari Firebase
  void _fetchPatientMData() {
    databaseRef.onValue.listen((event) {
      final data = Map<String, dynamic>.from(event.snapshot.value as Map);

      data.forEach((key, value) {
        final patientData = Map<String, dynamic>.from(value);
        patientM[key] = patientModel.fromJson(patientData);
      });
    });
  }

  // Fungsi untuk mengubah status pasien
  void togglePatientMtatus(String patientName) {
    if (patientM.containsKey(patientName)) {
      final patient = patientM[patientName]!;
      patient.status.value = !patient.status.value;

      // Update status di Firebase
      databaseRef
          .child(patientName)
          .update({'status': patient.status.value ? '1' : '0'});
    }
  }
}
