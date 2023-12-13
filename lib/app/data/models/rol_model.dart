class RolModel{
  final String nombre_rol;

  RolModel({
    required this.nombre_rol
  });

  factory RolModel.fromJson(Map<String, dynamic> json){
    return RolModel(
        nombre_rol: json['nombre_rol']
    );

  }
  Map<String, dynamic> toJson()=>{
    'nombre_rol' : nombre_rol
  };

}