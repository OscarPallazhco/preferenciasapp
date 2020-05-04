import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

class SongsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPreferences = UserPreferences();
    final _color = userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor;
    userPreferences.ultimaPagina = 'songs';
    return Scaffold(
      appBar: AppBar(
        title: Text('Songs Page',),
        backgroundColor: _color,
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('Songs Page'),
      ),
    );
  }
}