import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPreferences = UserPreferences();
    final _color = userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor;
    userPreferences.ultimaPagina = 'images';

    return Scaffold(
      appBar: AppBar(
        title: Text('Images Page',),
        backgroundColor: _color,
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('Images Page'),
      ),
    );
  }
}
