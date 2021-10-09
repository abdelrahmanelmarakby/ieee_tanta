import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ieee_tanta/app/view/screens/home_screen.dart';
import 'package:get/get.dart';

import 'app/core/services/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      home: HomeScreen(),
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
    );
  }
}
