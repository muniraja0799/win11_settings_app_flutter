import 'package:bitsdojo_window_flutter3/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:win11_settings/app/modules/home/pages/accessibility.dart';
import 'package:win11_settings/app/modules/home/pages/accounts.dart';
import 'package:win11_settings/app/modules/home/pages/apps.dart';
import 'package:win11_settings/app/modules/home/pages/bluetooth_and_devices.dart';
import 'package:win11_settings/app/modules/home/pages/gaming.dart';
import 'package:win11_settings/app/modules/home/pages/network_and_internet.dart';
import 'package:win11_settings/app/modules/home/pages/personalisation.dart';
import 'package:win11_settings/app/modules/home/pages/privacy_and_security.dart';
import 'package:win11_settings/app/modules/home/pages/time_and_languages.dart';
import 'package:win11_settings/app/modules/home/pages/windows_update.dart';
import 'package:win11_settings/app/modules/home/views/leftside_view.dart';
import 'package:win11_settings/app/modules/system/views/system_view.dart';
import 'package:win11_settings/app/widgets/window_buttons.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WindowTitleBarBox(
            child: Row(
              children: [
                Expanded(
                    child: MoveWindow(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 6.0),
                    child: Text(
                      'Settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
                WindowButtons(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                LeftSide(),
                GetX<HomeController>(builder: (controller) {
                  return getPages(Transition.leftToRightWithFade);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  getPages(trasition) {
    switch (controller.id.value) {
      case 1:
        return BluetoothAndDevices();
      case 2:
        return NetworkAndInternet();
      case 3:
        return Personalization();
      case 4:
        return Apps();
      case 5:
        return Accounts();
      case 6:
        return TimeAndLanguage();
      case 7:
        return Gaming();
      case 8:
        return Accessibility();
      case 9:
        return PrivacyAndSecurity();
      case 10:
        return WindowsUpdate();
      default:
        return SystemView();
    }
  }
}
