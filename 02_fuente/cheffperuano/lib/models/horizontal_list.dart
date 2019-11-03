import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MyListView(
          img_location: 'assets/images/aguadito.jpg',
          img_caption: 'Aguadito'
        ),
         MyListView(
          img_location: 'assets/images/ajigallina.jpg',
          img_caption: 'Aji de Gallina'
        ),
        MyListView(
          img_location: 'assets/images/arrozpollo.jpg',
          img_caption: 'Arroz con pollo'
        ),
      ],
    ),
  
 );
 }
}

class MyList2 extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MyListView(
          img_location: 'assets/images/carnes.jpg',
          img_caption: 'Carnes'
        ),
         MyListView(
          img_location: 'assets/images/causaC.jpg',
          img_caption: 'Causa 1'
        ),
        MyListView(
          img_location: 'assets/images/causaS.jpg',
          img_caption: 'Causa 2'
        ),
      ],
    ),
  
 );
 }
}

class MyList3 extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        MyListView(
          img_location: 'assets/images/ceviche.jpg',
          img_caption: 'Ceviche'
        ),
         MyListView(
          img_location: 'assets/images/chaufa.jpg',
          img_caption: 'Chaufa'
        ),
        MyListView(
          img_location: 'assets/images/enrrollados.jpg',
          img_caption: 'Enrrollado'
        ),
      ],
    ),
  
 );
 }
}

class MyListView extends StatelessWidget {

  final String img_location;
  final String img_caption;

  MyListView({this.img_location, this.img_caption});
 @override
 Widget build(BuildContext context) {
  return Container(
    width: 150,
    child: InkWell(
      onTap: (){},
      child: ListTile(
        title: Image.asset(img_location, height: 90.00,),
        subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(img_caption),
        ),
        
      ),
    ),
  
 );
 }
}