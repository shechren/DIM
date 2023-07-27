import 'package:flutter/material.dart';
import 'main.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const Home(),
  '/first': (context) => const FirstScreen(),
  '/second': (context) => const SecondScreen(),
};