
class CitasModel{

  final String id_empleado;
  final String fecha_cita;
  final String? tipo_servicio;
  final String descripcion;

  CitasModel({

    required this.id_empleado,
    required this.fecha_cita,
    required this.descripcion,

    this.tipo_servicio,

  });

  factory CitasModel.fromJson(Map<String,dynamic> json){
    return CitasModel(
      id_empleado: json['id_empleado'],
      fecha_cita: json['fecha_cita'],
      tipo_servicio: json['tipo_servicio'],
      descripcion: json['descripcion'],
    );
  }

  Map<String,dynamic> toJson() => {

    'id_empleado':id_empleado,
    'fecha_cita':fecha_cita,
    'tipo_servicio': tipo_servicio,
    'descripcion': descripcion


  };



}