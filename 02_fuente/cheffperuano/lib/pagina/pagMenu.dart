import 'package:flutter/material.dart';
import 'package:cheffperuano/widgets/strings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:cheffperuano/pagina/pagFavorito.dart';
import 'package:cheffperuano/pagina/pagInicio.dart';
import 'package:cheffperuano/pagina/pagPerfil.dart';
import 'package:cheffperuano/pagina/pagReceta.dart';
import 'package:cheffperuano/pagina/pagTip.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  GlobalKey _bottomNavigationKey = GlobalKey();
  
  //creacion de paginas
  final PagInicio _inicio = PagInicio();
  final PagReceta _receta = PagReceta();
  final PagFavorito _favorito = PagFavorito();
  final PagTip _tip = PagTip();
  final PagPerfil _perfil = PagPerfil();

  Widget _pageIndex = new PagInicio();

  Widget _pageChooser(int page){
    switch (page) {
      case 0:
        return _inicio;
        break;
      case 1:
        return _inicio;
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
    }
    return _pageChooser(page);
  }

  Icon icoSearch = Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: lblTituloApp,
        bottom: PreferredSize(
          preferredSize: Size(10,-10),
          child: Container(),
          
        ),
        backgroundColor: Color(0xFFE37103),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              setState(() {
                if (icoSearch.icon == Icons.search) {
                  icoSearch = Icon(Icons.cancel);
                  lblTituloApp = TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '¿Qué cocinaré hoy?',
                        hintStyle: TextStyle(fontSize: 15.0, color: Colors.white.withOpacity(0.5)),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),

                  );
              
                } else {
                  icoSearch = Icon(Icons.search);
                  lblTituloApp = Text('Chef Peruano Daewoo',style: TextStyle(fontSize: 16, ),);
                }
              });
            },
            icon: icoSearch,
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.search, size: 30,color: Colors.white,),
          Icon(Icons.import_contacts, size: 30,color: Colors.white,),
          Icon(Icons.favorite_border, size: 30,color: Colors.white,),
          Icon(Icons.lightbulb_outline, size: 30,color: Colors.white,),
          Icon(Icons.perm_identity, size: 30,color: Colors.white,),
        ],
        color: Color(0xFFE37103),
        buttonBackgroundColor: Color(0xFFE37103),
        backgroundColor: Colors.white,
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
        child: Center(
          child: _pageIndex,
        ),
      )
    );
  }
}