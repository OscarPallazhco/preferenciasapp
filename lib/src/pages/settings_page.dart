import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _secundario;
  int _genero;
  TextEditingController _textController;
  final userPreferences = UserPreferences();

  @override
  void initState() {
    super.initState();    
    _secundario = userPreferences.colorSecundario;
    _genero = userPreferences.genero;
    _textController = TextEditingController(text: userPreferences.nombreUsuario);
  }

  @override
  Widget build(BuildContext context) {

    final _color = userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor;


    return Scaffold(
      appBar: AppBar(
        title: Text('Settings',),
        backgroundColor: userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Settings',
              style: GoogleFonts.openSans(
                  fontSize: 30.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          SwitchListTile(
            value: _secundario,
            onChanged: (bool newValue) {
              userPreferences.colorSecundario = newValue;
              _secundario = newValue;
              setState(() {});
            },
            title: Text('Color secundario'),
            activeTrackColor: _color,
            activeColor: _color,
          ),
          RadioListTile(
            value: 2,
            groupValue: _genero,
            onChanged: (int newValue) {
              userPreferences.genero = newValue;
              _genero = newValue;
              setState(() {});
            },
            title: Text('Femenino'),
            activeColor: _color,
          ),
          RadioListTile(
            value: 1,
            groupValue: _genero,
            onChanged: (int newValue) {
              userPreferences.genero = newValue;
              _genero = newValue;
              setState(() {});
            },
            title: Text('Masculino'),
            activeColor: _color,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el dispositivo',
              ),
              onChanged: (String newValue) {
                userPreferences.nombreUsuario = newValue;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}
