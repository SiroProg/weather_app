import 'package:flutter/material.dart';
import 'package:weather_app/pages/controller/main_controller.dart';
import '/pages/app.dart';

void main(List<String> args) {
  MainController a = MainController();
  a.getApiData();
  runApp(App());
}
