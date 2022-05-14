import 'package:flutter/material.dart';

class WindowsUpdate extends StatelessWidget {
  const WindowsUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Windows Update',
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
