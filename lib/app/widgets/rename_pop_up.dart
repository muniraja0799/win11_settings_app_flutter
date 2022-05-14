// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:win11_settings/app/modules/system/controllers/system_controller.dart';

class RenamePopUp extends StatelessWidget {
  RenamePopUp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final SystemController controller;
  String name = '';
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      actions: [
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                    width: 2, color: Colors.white, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: () {
            controller.changeName();
          },
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                side: BorderSide(
                    width: 2, color: Colors.white, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pop(name);
          },
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ],
      backgroundColor: Colors.blue[700],
      content: Form(
        key: controller.nameFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Container(
          height: 280,
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.0),
                    topRight: Radius.circular(5.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rename your pc',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    GestureDetector(
                      child: Icon(Icons.close),
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).pop(name);
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rename your PC',
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'You can use combination of letters, hyphens, and numbers.',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Obx(
                      () => Text(
                        'Current PC name: ${controller.systemName.value}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 270,
                      child: TextFormField(
                        controller: controller.nameController,
                        onSaved: (newValue) =>
                            {controller.systemName.value = newValue!},
                        validator: (value) {
                          return controller.validateName(value!);
                        },
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                        onChanged: ((value) => {name = value}),
                        decoration: InputDecoration(
                          helperText: '',
                          errorStyle:
                              TextStyle(color: Colors.yellow, fontSize: 15.0),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.all(15.0),
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
