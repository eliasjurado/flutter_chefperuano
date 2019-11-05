import 'package:flutter/material.dart';
import 'package:cheffperuano/models/horizontal_list_favoritos.dart';


class PagFavorito extends StatefulWidget {
  @override
  _PagFavoritoState createState() => new _PagFavoritoState();
 }

class _PagFavoritoState extends State<PagFavorito> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     backgroundColor: Colors.white,
     body: ListView(
       children: <Widget>[

         new Column(
           children: <Widget>[
             new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Luisa",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 10.0),
            new ImgPerfil(altura: 100.00,),
              SizedBox(height: 10.0),
            Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Recetas Favoritas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 0.0),
          MyList(),
            SizedBox(height: 0.0),
          Padding(
                 padding: const EdgeInsets.only(top: 0),
                  child: Text('',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 0.0),
          MyList2(),
            SizedBox(height: 0.0),
          Padding(
                 padding: const EdgeInsets.only(top: 10),
                  child: Text('Hornos microondas Daewoo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 0.0),
          MyList3()

           ],
         ),    
       ],

     ),

   );
  }
}



 