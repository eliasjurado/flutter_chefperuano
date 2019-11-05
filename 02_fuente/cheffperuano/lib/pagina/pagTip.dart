import 'package:flutter/material.dart';
import 'package:cheffperuano/models/horizontal_list_tip.dart';


class PagTip extends StatefulWidget {
  @override
  _PagTipState createState() => new _PagTipState();
 }

class _PagTipState extends State<PagTip> {
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
                new Text("¿Como preparar un postre en 3 minutos?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 10.0),
            new ImgPerfil(altura: 1000.00),
              SizedBox(height: 10.0),
            Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Recetas Rápidas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10.0),
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
           ],
         ),    
       ],

     ),

   );
  }
}



 