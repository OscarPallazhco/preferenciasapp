
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            leading: Icon(Icons.home, color: Colors.blue, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
              // Navigator.pushNamed(context, 'home');
            },
            title: Text('Home'),
          ),
          ListTile(
            leading: Icon(Icons.image, color: Colors.blue, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
            },
            title: Text('Images'),
          ),
          ListTile(
            leading: Icon(Icons.library_music, color: Colors.blue, ),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, 'home');
            },
            title: Text('Songs'),
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue, ),
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