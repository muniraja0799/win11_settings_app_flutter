// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SystemController extends GetxController {
  final GlobalKey<FormState> nameFormKey = GlobalKey<FormState>();
  late TextEditingController nameController;

  var systemName = 'Windows 11'.obs;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
  }

  @override
  void onClose() {
    nameController.dispose();
    nameController.clear();
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Enter a name for your PC';
    }
    return null;
  }

  void changeName() {
    final isValid = nameFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    nameFormKey.currentState!.save();
  }
}
