import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de Usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario'),
          Divider(),
          Text('Género'),
          Divider(),
          Text('Usuario'),
          Divider(),
        ],
      ),
    );
  }

  // Widget _crearMenu(BuildContext context) {
  //   return ;
  // }
}
