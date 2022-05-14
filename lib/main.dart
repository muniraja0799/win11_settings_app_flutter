import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'package:bitsdojo_window_flutter3/bitsdojo_window.dart';

void main() {
  final title = "Seetings";
  runApp(
    GetMaterialApp(
      defaultTransition: Transition.downToUp,
      debugShowCheckedModeBanner: false,
      title: title,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
  doWhenWindowReady(() {
    final initialSize = Size(600, 450);
    appWindow.minSize = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}
