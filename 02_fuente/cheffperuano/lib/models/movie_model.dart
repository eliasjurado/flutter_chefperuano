class Movie {
  String imageUrl;
  String titulo;
  String ingredientes;
  int platos;
 
  int tiempo;
  String descripcion;
  List<String> hornos;
  List<String> recetasSugeridas;

  Movie({
    this.imageUrl,
    this.titulo,
    this.ingredientes,
    this.platos,
    
    this.tiempo,
    this.descripcion,
    this.hornos,
    this.recetasSugeridas,
  });
}

final List<Movie> movies = [
  Movie(
    imageUrl: 'assets/images/causaC.jpg',
    titulo: 'Causa Costeña',
    ingredientes: 'Papa, Pollo, Cebolla, Mayonesa',
    platos  : 5,
    
    tiempo: 45,
    descripcion:
        'La causa costeña es un plato de entrada tipico de peru el cual.',
    hornos: [
      'assets/images/horno1.jpg',
      'assets/images/horno2.jpg',
      'assets/images/horno3.jpg',
      'assets/images/horno4.jpg',
      'assets/images/horno5.jpg',
    ],
    recetasSugeridas: [
      'assets/images/causaSe.jpg',
      'assets/images/enrrollados.jpg',
      'assets/images/ceviche.jpg',
      'assets/images/causaS.jpg',
    ],


  ),
  Movie(
    imageUrl: 'assets/images/enrrollados.jpg',
    titulo: 'Enrrollado',
    ingredientes: 'Carne, Caigua',
    platos: 5,
    
    tiempo: 20,
    descripcion:
        'El aguadito es un plato tipico de peru el cual',
    hornos: [
      'assets/images/horno1.jpg',
      'assets/images/horno2.jpg',
      'assets/images/horno3.jpg',
      'assets/images/horno4.jpg',
      'assets/images/horno5.jpg',
    ],
    recetasSugeridas: [
      'assets/images/aguadito.jpg',
      'assets/images/ceviche.jpg',
      'assets/images/carnes.jpg',
      'assets/images/papahuanca.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/carnes.jpg',
    titulo: 'Carnes',
    ingredientes: 'Carnes roja, carne blanca, mayonesa',
    platos: 4,
    
    tiempo: 30,
    descripcion:
        'La causa ...',
    hornos: [
      'assets/images/horno1.jpg',
      'assets/images/horno2.jpg',
      'assets/images/horno3.jpg',
      'assets/images/horno4.jpg',
      'assets/images/horno5.jpg',
    ],
    recetasSugeridas: [
      'assets/images/ceviche.jpg',
      'assets/images/causaS.jpg',
      'assets/images/causaSe.jpg',
      'assets/images/enrrollados.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/images/papahuanca.jpg',
    titulo: 'Papa a la huancaina',
    ingredientes: 'Papa, Pollo, Cebolla, Mayonesa',
    platos  : 5,
    
    tiempo: 45,
    descripcion:
        'La papa a la huancaina es escencial en los platos',
    hornos: [
      'assets/images/horno1.jpg',
      'assets/images/horno2.jpg',
      'assets/images/horno3.jpg',
      'assets/images/horno4.jpg',
      'assets/images/horno5.jpg',
    ],
    recetasSugeridas: [
      'assets/images/causaSe.jpg',
      'assets/images/enrrollados.jpg',
      'assets/images/ceviche.jpg',
      'assets/images/causaS.jpg',
    ],


  ),
  Movie(
    imageUrl: 'assets/images/paltaM.jpg',
    titulo: 'Palta rellan',
    ingredientes: 'Palta, cebolla, atun',
    platos  : 5,
    
    tiempo: 45,
    descripcion:
        'La palta rellena es un plato tipico',
    hornos: [
      'assets/images/horno1.jpg',
      'assets/images/horno2.jpg',
      'assets/images/horno3.jpg',
      'assets/images/horno4.jpg',
      'assets/images/horno5.jpg',
    ],
    recetasSugeridas: [
      'assets/images/causaSe.jpg',
      'assets/images/enrrollados.jpg',
      'assets/images/ceviche.jpg',
      'assets/images/causaS.jpg',
    ],


  ),
];

final List<String> sopa = [
  'assets/images/calgogallina.jpg',
  'assets/images/menestron.jpg',
  'assets/images/parihuela.jpg',
  'assets/images/sopadetrigo.jpg',
  'assets/images/sopamote.jpg',
  'assets/images/sopaolluco.jpg',
];

final List<String> almuerzo = [
  'assets/images/secofrejoles.jpg',
  'assets/images/ajigallina.jpg',
  'assets/images/pure.jpg',
  'assets/images/arrozpollo.jpg',
  'assets/images/chaufa.jpg',
];

final List<String> postres = [
  'assets/images/paimanzana.jpg',
  'assets/images/tortachocolate.jpg',
  'assets/images/tortahelada.jpg',
  'assets/images/tortalucuma.jpg',
  'assets/images/tortamelocoton.jpg',
  'assets/images/tortafresa.jpg',
];






