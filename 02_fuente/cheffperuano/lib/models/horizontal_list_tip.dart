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
          img_location: 'assets/images/tortachocolate.jpg',
          img_caption: 'Torta Chocolate'
        ),
         MyListView(
          img_location: 'assets/images/chaufa.jpg',
          img_caption: 'Chaufa'
        ),
        MyListView(
          img_location: 'assets/images/menestron.jpg',
          img_caption: 'Menestron'
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
          img_location: 'assets/images/tortafresa.jpg',
          img_caption: 'Trta de Fresa'
        ),
         MyListView(
          img_location: 'assets/images/tallarines.jpg',
          img_caption: 'Tallarines'
        ),
        MyListView(
          img_location: 'assets/images/tortahelada.jpg',
          img_caption: 'Torta Helada'
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
          img_location: 'assets/images/KOR-208MCB_1.jpg',
          img_caption: 'KOR-208MCB'
        ),
         MyListView(
          img_location: 'assets/images/KOR-208MCS_1.jpg',
          img_caption: 'KOR-208MCS'
        ),
        MyListView(
          img_location: 'assets/images/KOR-GOLD32_1.jpg',
          img_caption: 'KOR-GOLD32'
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
    width: 140,
    child: InkWell(
      onTap: (){},
      child: ListTile(
        title: Image.asset(img_location, height: 100.00,),
        subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(img_caption),
        ),
        
      ),
    ),
  
 );
 }
}
class ImgPerfil extends StatelessWidget {
       final double altura;
       //final double ancho;
      ImgPerfil({this.altura});
 @override
     
 Widget build(BuildContext context) {

   AssetImage assetImage = new AssetImage('assets/images/tip1.jpg');
   Image image = new Image(image: assetImage, width: altura,);
  return new Container(
      child: image,
 );
 }
}