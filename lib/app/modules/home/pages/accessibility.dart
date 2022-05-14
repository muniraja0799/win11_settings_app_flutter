import 'package:flutter/material.dart';

class Accessibility extends StatelessWidget {
  const Accessibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Accessibility',
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
