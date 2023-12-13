class CalificacionesModel{
  final String nombre;
  final String cantidad_estrellas;


  CalificacionesModel({
    required this.nombre,
    required this.cantidad_estrellas,

  });

  factory CalificacionesModel.fromJson(Map<String, dynamic> json){
    return CalificacionesModel(
      nombre: json['nombre'],
      cantidad_estrellas: json['cantidad_estrellas'],

    );

  }
  Map<String, dynamic> toJson()=>{
    'nombre' : nombre,
    'apellido': cantidad_estrellas,
  };

}