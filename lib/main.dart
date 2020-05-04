import 'package:flutter/material.dart';

import 'package:preferenciasapp/src/pages/home_page.dart';
import 'package:preferenciasapp/src/pages/settings_page.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final userPreferences = UserPreferences();
  await userPreferences.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias de usuario App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'settings': (BuildContext context) => SettingsPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.teal,
      ),
    );
  }
}
