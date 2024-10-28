// models/patient_model.dart
import 'package:get/get.dart';

class patientModel {
  var message = ''.obs;
  var status = false.obs; // Menggunakan boolean untuk status

  patientModel({required String message, required bool status}) {
    this.message.value = message;
    this.status.value = status;
  }

  factory patientModel.fromJson(Map<dynamic, dynamic> json) {
    return patientModel(
      message: json['pesan'] ?? '',
      status: json['status'] == '1',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pesan': message.value,
      'status': status.value ? '1' : '0',
    };
  }
}
