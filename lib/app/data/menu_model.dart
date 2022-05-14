import 'package:flutter/material.dart';

class MenuData {
  String? title;
  String? icon;
  Widget page;
  int id;

  MenuData({this.icon, this.title, required this.page, required this.id});
}
