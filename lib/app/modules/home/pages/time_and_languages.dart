import 'package:flutter/material.dart';

class TimeAndLanguage extends StatelessWidget {
  const TimeAndLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Time And Language',
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
