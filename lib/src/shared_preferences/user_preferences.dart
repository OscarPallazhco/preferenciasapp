import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  // String _name;
  // int _genero;
  // bool _secundario;
  SharedPreferences _prefs;

  static final UserPreferences _instancia = new UserPreferences._internal();

  factory UserPreferences(){
    return _instancia;
  }

  UserPreferences._internal();

  initPrefs() async{
    _prefs = await SharedPreferences.getInstance();
  }


  // GET y SET del Genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  get generoString{
    int value = _prefs.getInt('genero') ?? 1;
    if (value ==1) {
      return 'Masculino';
    } else {
      return 'Femenino';
    }
  }

  set genero( int value ) {
    _prefs.setInt('genero', value);
  }

  // GET y SET del _colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  get colorsecundarioString{
    bool value = _prefs.getBool('colorSecundario') ?? false;
    if (value) {
      return 'Si';
    } else {
      return 'No';
    }
  }

  set colorSecundario( bool value ) {
    _prefs.setBool('colorSecundario', value);
  }


  // GET y SET del nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario( String value ) {
    _prefs.setString('nombreUsuario', value);
  }

    // GET y SET de la última página
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina( String value ) {
    _prefs.setString('ultimaPagina', value);
  }
  
  limpiar(){
    _prefs.clear();
  }

}
