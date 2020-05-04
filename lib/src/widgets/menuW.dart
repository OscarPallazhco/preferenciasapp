
import 'package:flutter/material.dart';
import 'package:preferenciasapp/src/shared_preferences/user_preferences.dart';

class MenuWidget extends StatelessWidget {

  final userPreferences = UserPreferences();


  @override
  Widget build(BuildContext context) {
  
  final _color = userPreferences.colorSecundario ? Theme.of(context).secondaryHeaderColor:Theme.of(context).primaryColor;
  
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              image: DecorationImage(
                image: AssetImage('assets/menu_img.jpg'),
                fit: BoxFit.cover
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: _color, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
              // Navigator.pushNamed(context, 'home');
            },
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.image, color: _color, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
            },
            title: Text('Images'),
          ),
          ListTile(
            leading: Icon(Icons.library_music, color: _color, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
            },
            title: Text('Songs'),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: _color, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'settings');
              // Navigator.pushNamed(context, 'settings');
            },
            title: Text('Setting'),
          ),

        ],
      ),
    );
  }
}