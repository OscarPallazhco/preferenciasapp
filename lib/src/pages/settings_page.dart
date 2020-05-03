import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

class SettingsPage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setings'),
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('Preferencias'),
      )
    );
  
  }
}