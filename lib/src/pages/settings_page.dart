import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/widgets/menuW.dart';

import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool _secundario = false;
  int _genero = 1;
  String _nombre = 'Eduardo';
  TextEditingController _textController;

  @override
  void initState() { 
    super.initState();
    _textController = TextEditingController(text: _nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
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
          Divider(color: Colors.grey,),
          SwitchListTile(value: _secundario, onChanged: (bool newValue) {_secundario = newValue; setState(() {}); }, title: Text('Color secundario'),),
          RadioListTile(value: 2, groupValue: _genero, onChanged: (int newValue){_genero = newValue; setState(() {}); }, title: Text('Femenino'),),
          RadioListTile(value: 1, groupValue: _genero, onChanged: (int newValue){_genero = newValue; setState(() {}); }, title: Text('Masculino'),),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el dispositivo',
              ),
              onChanged: ( String newValue){},
            ),
          )

        ],
      ),
    );
  }
}
