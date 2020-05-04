import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

class HomePage extends StatelessWidget {

  final userPreferences = UserPreferences();

  @override
  Widget build(BuildContext context) {
  
  final _color = userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor;
  userPreferences.ultimaPagina = 'home';

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
        backgroundColor: _color,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${userPreferences.colorsecundarioString}'),
          Divider(),
          Text('Género: ${userPreferences.generoString}'),
          Divider(),
          Text('Usuario: ${userPreferences.nombreUsuario}'),
          Divider(),
        ],
      ),
    );
  }

  // Widget _crearMenu(BuildContext context) {
  //   return ;
  // }
}
