import 'package:alarm_pasien/models/patientModel.dart';
import 'package:get/get.dart';
import 'package:firebase_database/firebase_database.dart';

class patientController extends GetxController {
  final patientM = patientModel();
  final DatabaseReference databaseRef = FirebaseDatabase.instance.ref();

  @override
  void onInit() {
    super.onInit();
    _getDataFromDatabase();
  }

  void _getDataFromDatabase() {
    databaseRef.child('alarm-db').onValue.listen((event) {
      final data = event.snapshot.value as Map<dynamic, dynamic>;
      patientM.Raena.value = data['Raena'].toString();
      patientM.Lala.value = data['Lala'].toString();
      patientM.Vina.value = data['Vina'].toString();
      patientM.Beta.value = data['Beta'].toString();
      patientM.Fuma.value = data['Fuma'].toString();
      patientM.Dina.value = data['Dina'].toString();
    });
  }

  void ledControlRaena() {
    patientM.valueRaena.value = !patientM.valueRaena.value;
    updateRaenaValue();
  }

  void updateRaenaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Raena': patientM.valueRaena.value ? '1' : '0'});
  }

  // Toggle and update functions for Vina
  void ledControlVina() {
    patientM.valueVina.value = !patientM.valueVina.value;
    updateVinaValue();
  }

  void updateVinaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Vina': patientM.valueVina.value ? '1' : '0'});
  }

  // Toggle and update functions for Lala
  void ledControlLala() {
    patientM.valueLala.value = !patientM.valueLala.value;
    updateLalaValue();
  }

  void updateLalaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Lala': patientM.valueLala.value ? '1' : '0'});
  }

  // Toggle and update functions for Dina
  void ledControlDina() {
    patientM.valueDina.value = !patientM.valueDina.value;
    updateDinaValue();
  }

  void updateDinaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Dina': patientM.valueDina.value ? '1' : '0'});
  }

  // Toggle and update functions for Fuma
  void ledControlFuma() {
    patientM.valueFuma.value = !patientM.valueFuma.value;
    updateFumaValue();
  }

  void updateFumaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Fuma': patientM.valueFuma.value ? '1' : '0'});
  }

  // Toggle and update functions for Beta
  void ledControlBeta() {
    patientM.valueBeta.value = !patientM.valueBeta.value;
    updateBetaValue();
  }

  void updateBetaValue() {
    databaseRef
        .child('alarm-db')
        .update({'Beta': patientM.valueBeta.value ? '1' : '0'});
  }
}
