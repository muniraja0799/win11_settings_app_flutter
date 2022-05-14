import 'package:flutter/material.dart';

class BluetoothAndDevices extends StatelessWidget {
  const BluetoothAndDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Bluetooth And Devices',
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
