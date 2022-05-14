import 'package:get/get.dart';
import 'package:win11_settings/app/data/menu_model.dart';
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
import 'package:win11_settings/app/modules/system/views/system_view.dart';

class HomeController extends GetxController {
  var isSelected = false.obs;
  var sidebarList = <MenuData>[].obs;
  var id = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getListItems();
    print('id: ${id.value}');
  }

  void getListItems() {
    var listItems = [
      MenuData(
          title: 'System',
          icon: 'assets/icons/System.webp',
          page: SystemView(),
          id: id.value),
      MenuData(
        title: 'Bluetooth & devices',
        icon: 'assets/icons/Bluetooth & devices.webp',
        page: BluetoothAndDevices(),
        id: id.value,
      ),
      MenuData(
        title: 'Network & internet',
        icon: 'assets/icons/Network & internet.webp',
        page: NetworkAndInternet(),
        id: 3,
      ),
      MenuData(
        title: 'Personalization',
        icon: 'assets/icons/Personalization.webp',
        page: Personalization(),
        id: id.value,
      ),
      MenuData(
        title: 'Apps',
        icon: 'assets/icons/Apps.webp',
        page: Apps(),
        id: id.value,
      ),
      MenuData(
        title: 'Accounts',
        icon: 'assets/icons/Accounts.webp',
        page: Accounts(),
        id: id.value,
      ),
      MenuData(
        title: 'Time & language',
        icon: 'assets/icons/Time & language.webp',
        page: TimeAndLanguage(),
        id: id.value,
      ),
      MenuData(
        title: 'Gaming',
        icon: 'assets/icons/Gaming.webp',
        page: Gaming(),
        id: id.value,
      ),
      MenuData(
        title: 'Accessibility',
        icon: 'assets/icons/Accessibility.webp',
        page: Accessibility(),
        id: id.value,
      ),
      MenuData(
        title: 'Privacy & security',
        icon: 'assets/icons/Privacy & security.webp',
        page: PrivacyAndSecurity(),
        id: id.value,
      ),
      MenuData(
        title: 'Windows Update',
        icon: 'assets/icons/Windows Update.webp',
        page: WindowsUpdate(),
        id: id.value,
      ),
    ];

    sidebarList.value = listItems;
  }
}
