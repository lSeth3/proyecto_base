class ProveedoresModel{

  final String nombre;
  final String apellido;
  final String nit;
  final String correo;
  final String telefono;


  ProveedoresModel({
    required this.nombre,
    required this.apellido,
    required this.nit,
    required this.correo,
    required this.telefono,

  });

  factory ProveedoresModel.fromJson(Map<String,dynamic> json){
    return ProveedoresModel(
      nombre: json['nombre'],
      apellido: json['apellido'],
      nit: json['nit'],
      correo: json['correo'],
      telefono: json['telefono'],

    );
  }

  Map<String,dynamic> toJson() => {
    'nombre':nombre,
    'apellido':apellido,
    'nit':nit,
    'correo':correo,
    'telefono':telefono,



  };



}
