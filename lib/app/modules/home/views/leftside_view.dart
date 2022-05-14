import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:win11_settings/app/modules/home/controllers/home_controller.dart';

class LeftSide extends StatelessWidget {
  LeftSide({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    child: Material(
                      color: Colors.grey[900],
                      child: DrawerHeader(
                        child: Column(
                          children: [
                            InkWell(
                              hoverColor: Colors.grey[850],
                              borderRadius: BorderRadius.circular(5.0),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 32.0,
                                      foregroundImage: AssetImage(
                                          'assets/images/profile.jpg'),
                                    ),
                                    SizedBox(
                                      width: 12.0,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'MUNI RAJA',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Text(
                                            'muniraja1807@gmail.com'
                                                .toLowerCase(),
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white54,
                                ),
                                filled: true,
                                fillColor: Colors.grey[850],
                                hintText: 'Find a setting',
                                hintStyle: TextStyle(color: Colors.white54),
                                contentPadding: EdgeInsets.all(15.0),
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GetX<HomeController>(
                      builder: (controller) {
                        return ListView.builder(
                          controller: ScrollController(),
                          shrinkWrap: true,
                          itemCount: controller.sidebarList.length,
                          itemBuilder: (context, index) {
                            return Obx(
                              () => Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2.0, horizontal: 15.0),
                                child: ClipRect(
                                  clipBehavior: Clip.hardEdge,
                                  child: ListTile(
                                    selectedTileColor: Colors.grey[850],
                                    selected: index == controller.id.value,
                                    dense: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    hoverColor: Colors.grey[850],
                                    leading: Image(
                                      height: 22,
                                      image: AssetImage(
                                          '${controller.sidebarList[index].icon}'),
                                    ),
                                    title: Text(
                                      '${controller.sidebarList[index].title}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      controller.id.value = index;
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
