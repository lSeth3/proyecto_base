class EmpleadosModel {
  final String nombre_completo;
  final String? fecha_nacimiento;
  final String? correo;
  final String telefono;
  final String? cargo;


  EmpleadosModel({
    required this.nombre_completo,
    required this.telefono,
    this.correo,
    this.fecha_nacimiento,
    this.cargo
  });

  factory EmpleadosModel.fromJson(Map<String, dynamic> json){
    return EmpleadosModel(
        nombre_completo: json['nombre_completo'],
        fecha_nacimiento: json['fecha_nacimiento'],
        correo: json['correo'],
        telefono: json['telefono'],
        cargo: json['cargo'],
    );
  }


  Map<String, dynamic> toJson() => {
    'nombre_completo': nombre_completo,
    'fecha_nacimiento': fecha_nacimiento,
    'correo': correo,
    'telefono': telefono,
    'cargo': cargo,
  };

}