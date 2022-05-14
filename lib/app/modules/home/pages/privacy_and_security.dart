import 'package:flutter/material.dart';

class PrivacyAndSecurity extends StatelessWidget {
  const PrivacyAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          'Privacy And Security',
          style: TextStyle(color: Colors.white, fontSize: 50.0),
        ),
      ),
    );
  }
}
