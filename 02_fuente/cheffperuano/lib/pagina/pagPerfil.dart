
import 'package:flutter/material.dart';

import 'package:cheffperuano/pagina/pagConfiguracion.dart';
import 'package:cheffperuano/models/horizontal_list.dart';


class PagPerfil extends StatefulWidget {

 


  @override
  _PagPerfilState createState() => new _PagPerfilState();
 }

class _PagPerfilState extends State<PagPerfil> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,

       actions: <Widget>[
         IconButton(
            padding: EdgeInsets.only(right: 30.0),
            icon: Icon(Icons.settings),
            onPressed: (){
              Navigator.push(context, 
                     MaterialPageRoute(builder: (context) => new PagConfiguracion()));
            },
            iconSize: 30.0,
            color: Colors.black,
          ),
       ],
     ),

     body: ListView(
       children: <Widget>[

         new Column(
           children: <Widget>[
             new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("BRYAN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 20.0),
            new MyImage(altura: 100.00,),
              SizedBox(height: 20.0),
            Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Vistas Recientemente',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10.0),
          MyList(),
            SizedBox(height: 10.0),
          Padding(
                 padding: const EdgeInsets.only(top: 10),
                  child: Text('Recetas Favoritas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10.0),
          MyList2(),
            SizedBox(height: 10.0),
          Padding(
                 padding: const EdgeInsets.only(top: 10),
                  child: Text('Recetas Sugeridas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 10.0),
          MyList3()

           ],
         ),
         
          

       ],

     ),

   );
  }
}



 