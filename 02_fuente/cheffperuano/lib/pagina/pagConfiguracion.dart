import 'package:flutter/material.dart';



class PagConfiguracion extends StatefulWidget {

  
  @override
  _PagConfiguracionState createState() => new _PagConfiguracionState();
 }


class _PagConfiguracionState extends State<PagConfiguracion> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     backgroundColor: Colors.white,
    appBar: new AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,

       actions: <Widget>[
         IconButton(
            padding: EdgeInsets.only(right: 30.0),
            icon: Icon(Icons.chevron_left),
            onPressed: (){
               Navigator.pop(context);
            },
            iconSize: 30.0,
            color: Colors.black,
          ),
       ],
       
       title: new Text(
              "CONFIGURACION",
                style: new TextStyle(fontSize:20.0,
                color: const Color(0xFF000000),
                fontWeight: FontWeight.w400,
                ),
              )
     ),

    body: new Container(
     padding: const EdgeInsets.only(left: 40),
     width: 330,
     // child: Center(
        child: new Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(border: Border.all(),),
              child: new Column(
                  children: <Widget>[
                    Text("GENERAL", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.00),),
                    Row(
                     children: <Widget>[
                       Text("Reproducción automática de videos"),
                       new Switch(onChanged: (bool value) {}, value: false),
                     ],
                    ),
                    Row(
                     children: <Widget>[
                       Text("Restricciones de dieta"),
                       new Switch(onChanged: (bool value) {}, value: false),
                     ],
                    ),
                    Row(
                     children: <Widget>[
                       Text("Notifcaciones y sonido"),
                       new Switch(onChanged: (bool value) {}, value: false),
                     ],
                    ),
                  ],  
              ),
            ),
            SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(border: Border.all(),),
              child: new Column(
                  children: <Widget>[
                    Text("AYUDA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.00),),
                    Row(
                     children: <Widget>[
                       Text("Correo electrónico de soporte"),
                       
                     ],
                    ),
                    Row(
                     children: <Widget>[
                       Text("Comunicate con nosotros"),
                       
                     ],
                    ),
                   
                  ],  
              ),

            ),
           SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(border: Border.all(),),
              child: new Column(
                  children: <Widget>[
                    Text("LEGALES", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.00),),
                    Row(
                     children: <Widget>[
                       Text("Terminos y condiciones"),
                       
                     ],
                    ),
                    Row(
                     children: <Widget>[
                       Text("Políticas de privacidad"),
                       
                     ],
                    ),
                   
                  ],  
              ),

            ),
            SizedBox(height: 2.0),
            Container(
              decoration: BoxDecoration(border: Border.all(),),
              child: new Column(
                  children: <Widget>[
                    Text("CUENTA", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.00),),
                    Row(
                     children: <Widget>[
                       Text("Borrar cuenta"),
                       
                     ],
                    ),
                    Row(
                     children: <Widget>[
                       Text("Cerrar sesión"),
                       
                     ],
                    ),
                   
                  ],  
              ),

            ),
            SizedBox(height: 20.0),
            new MyImage(altura: 255.0,)

          ],
        ),
      //), 
    ),
  
   );
  }
}

class MyImage extends StatelessWidget {
       final double altura;
      MyImage({this.altura});
 @override
     
 Widget build(BuildContext context) {

   AssetImage assetImage = new AssetImage('assets/images/logo.JPG');
   Image image = new Image(image: assetImage, width: altura,);
  return new Container(
      child: image,
 );
 }
}

/* Container(
          
        ), */

        /* ListView(

      

    ), */