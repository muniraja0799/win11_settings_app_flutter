import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:win11_settings/app/widgets/rename_pop_up.dart';

import '../controllers/system_controller.dart';

class SystemView extends GetView<SystemController> {
  final systemController = Get.put(SystemController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: SizedBox(
          width: 1050,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'System',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  child: Expanded(
                    child: ListView(
                      controller: ScrollController(),
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        width: 4,
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/images/bg_dark.jpg',
                                      height: 60,
                                      width: 115,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.systemName.value
                                            .toUpperCase(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Nitro AN515-43',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      InkWell(
                                        borderRadius: BorderRadius.circular(5),
                                        hoverColor: Colors.grey[850],
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (context) => RenamePopUp(
                                              controller: controller,
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Rename',
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    hoverColor: Colors.grey[850],
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/ms_logo.webp',
                                              height: 20,
                                              width: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Microsoft 365',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  'view benefits',
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.white54,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.0),
                                  InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    hoverColor: Colors.grey[850],
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/Windows Update.webp',
                                              height: 20,
                                              width: 20,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Windows Update',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  'Last checked: 1 hours ago',
                                                  style: TextStyle(
                                                    fontSize: 12.0,
                                                    color: Colors.white54,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 15,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.only(
                                top: 2.0, bottom: 2.0, right: 20.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.grey[850],
                              child: ListTile(
                                hoverColor: Colors.grey[800],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                leading: Icon(
                                  Icons.monitor,
                                  color: Colors.white70,
                                  size: 24,
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white70,
                                  size: 12.0,
                                ),
                                title: Text(
                                  'Display',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 15),
                                ),
                                subtitle: Text(
                                  'Monitor, brightness,night light, display profile',
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 12),
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
