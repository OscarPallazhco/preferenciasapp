import 'package:flutter/material.dart';

import 'package:preferenciasapp/src/pages/home_page.dart';
import 'package:preferenciasapp/src/pages/images_page.dart';
import 'package:preferenciasapp/src/pages/settings_page.dart';
import 'package:preferenciasapp/src/pages/songs_page.dart';
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
    final userPreferences = UserPreferences();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias de usuario App',
      initialRoute: userPreferences.ultimaPagina,
      routes: {
        'home': (BuildContext context) => HomePage(),
        'settings': (BuildContext context) => SettingsPage(),
        'images': (BuildContext context) => ImagesPage(),
        'songs': (BuildContext context) => SongsPage(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.teal,
      ),
    );
  }
}
