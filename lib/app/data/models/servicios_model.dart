class ServiciosModel {
  final String tipo_servicio;
  final String descripcion;



  ServiciosModel({
    required this.tipo_servicio,
    required this.descripcion,
  });

  factory ServiciosModel.fromJson(Map<String, dynamic> json){
    return ServiciosModel(
      tipo_servicio: json['tipo_servicio'],
      descripcion: json['descripcion'],

    );
  }

  Map<String, dynamic> toJson() => {
    'tipo_servicio': tipo_servicio,
    'fecha_nacimiento': descripcion,
  };

}