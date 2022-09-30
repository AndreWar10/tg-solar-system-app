import 'package:flutter/material.dart';
import 'data/my_app.dart';
import 'data/injection.dart' as di;

void main() {
  di.init();
  runApp(MyApp());
}
