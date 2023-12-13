class UsersModel{
  final String nombre;
  final String apellido;
  final String fecha_nacimiento;
  final String correo;
  final String telefono;
  final String direccion ;
  final String password;

  UsersModel({
    required this.nombre,
    required this.apellido,
    required this.fecha_nacimiento,
    required this.correo,
    required this.telefono,
    required this.direccion,
    required this.password,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json){
    return UsersModel(
      nombre: json['nombre'],
      apellido: json['apellido'],
      password: json['password'],
      fecha_nacimiento:  json['fecha_nacimiento'],
      telefono: json['telefono'],
      correo: json['correo'],
      direccion: json['direccion'],
    );

  }
  Map<String, dynamic> toJson()=>{
    'nombre' : nombre,
    'apellido': apellido,
    'fecha_nacimiento':fecha_nacimiento,
    'correo': correo,
    'telefono':telefono,
    'correo':correo,
    'password':password

  };

}
