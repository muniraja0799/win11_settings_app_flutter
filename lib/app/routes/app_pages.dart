import 'package:get/get.dart';

import 'package:win11_settings/app/modules/home/bindings/home_binding.dart';
import 'package:win11_settings/app/modules/home/views/home_view.dart';
import 'package:win11_settings/app/modules/system/bindings/system_binding.dart';
import 'package:win11_settings/app/modules/system/views/system_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: _Paths.SYSTEM,
        page: () => SystemView(),
        binding: SystemBinding(),
        transition: Transition.downToUp),
  ];
}
