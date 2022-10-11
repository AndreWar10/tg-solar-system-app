import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'data/my_app.dart';
import 'data/injection.dart' as di;

Future main() async {
  di.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
