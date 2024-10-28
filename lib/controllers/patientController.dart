import 'package:alarm_pasien/models/patientModel.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';

class patientController extends GetxController {
  final DatabaseReference databaseRef =
      FirebaseDatabase.instance.ref('alarm-db');
  var patientM = <String, patientModel>{}.obs;

  // Use a reactive list for messages if needed, otherwise just keep the count
  final List<String> _activeMessages = [];

  @override
  void onInit() {
    super.onInit();
    _fetchPatientMData();
  }

  // Getter to count active patients based on their status
  int get activeCount {
    return patientM.values.where((patient) => patient.status.value).length;
  }

  void addMessage(String message) {
    _activeMessages.add(message);
    update(); // Notify listeners
  }

  // Method to get active messages
  List<String> get activeMessages => _activeMessages;

  void _fetchPatientMData() {
    databaseRef.onValue.listen((event) {
      final data = Map<String, dynamic>.from(event.snapshot.value as Map);

      data.forEach((key, value) {
        final patientData = Map<String, dynamic>.from(value);
        patientM[key] = patientModel.fromJson(patientData);
      });
      update(); // Notify listeners after fetching data
    });
  }

  void togglePatientMStatus(String patientName) {
    if (patientM.containsKey(patientName)) {
      final patient = patientM[patientName]!;
      patient.status.value = !patient.status.value;

      databaseRef
          .child(patientName)
          .update({'status': patient.status.value ? '1' : '0'});
      update(); // Notify listeners after toggling status
    }
  }
}
