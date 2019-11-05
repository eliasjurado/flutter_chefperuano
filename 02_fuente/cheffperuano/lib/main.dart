import 'package:cheffperuano/pagina/pagLogin.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cheffperuano/pagina/pagConfiguracion.dart';
import 'package:cheffperuano/pagina/pagFavorito.dart';
import 'package:cheffperuano/pagina/pagInicio.dart';
import 'package:cheffperuano/pagina/pagPerfil.dart';
import 'package:cheffperuano/pagina/pagReceta.dart';
import 'package:cheffperuano/pagina/pagTip.dart';


void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  
  //creacion de paginas
  final PagLogin _login=PagLogin();
  final PagInicio _inicio = PagInicio();
  final PagReceta _receta = PagReceta();
  final PagFavorito _favorito = PagFavorito();
  final PagTip _tip = PagTip();
  final PagPerfil _perfil = PagPerfil();
  final PagConfiguracion _configuracion = PagConfiguracion();


  Widget _pageIndex = new PagLogin();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
        return _inicio;
        break;
      case 1:
        return _receta;
        break;
      case 2:
        return _favorito;
        break;
      case 3:
        return _tip;
        break;  
      case 4:
        return _perfil;
        break;
      default: _inicio;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(

          key: _bottomNavigationKey,
          index: 0,
          height: 50.0,
          items: <Widget>[
            Icon(Icons.search, size: 30),
            Icon(Icons.import_contacts, size: 30),
            Icon(Icons.favorite_border, size: 30),
            Icon(Icons.lightbulb_outline, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor:  Color(0xFFFF6B6B),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 250),
          onTap: (int tappedIndex) {
            setState(() {
                //qué página voy a mostrar
              _pageIndex = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
              colors: [
                //0xFF
                Color(0xFF556270),
                Color(0xFFFF6B6B),
              ],
              begin: const FractionalOffset(1.0, .0),
              end: const FractionalOffset(0.9, 1.0)
            ),
          ),
          child: Center(
            child: _pageIndex,
          ),
        ));
  }
}