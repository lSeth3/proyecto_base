class CotizacionesModel {
  final String tipo_servicio;
  final String descripcion;



  CotizacionesModel({
    required this.tipo_servicio,
    required this.descripcion,
  });

  factory CotizacionesModel.fromJson(Map<String, dynamic> json){
    return CotizacionesModel(
      tipo_servicio: json['tipo_servicio'],
      descripcion: json['descripcion'],

    );
  }


  Map<String, dynamic> toJson() => {
    'tipo_servicio': tipo_servicio,
    'fecha_nacimiento': descripcion,
  };

}