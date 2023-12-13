class ProductosModel{

  final String fecha;
  final String cantidad;
  final String nombre_producto;
  final String descripcion;
  final String precio_producto;


  ProductosModel(
      {
        required this.fecha,
        required this.cantidad,
        required this.nombre_producto,
        required this.descripcion,
        required this.precio_producto,

      });

  factory ProductosModel.fromJson(Map<String,dynamic> json){
    return ProductosModel(
      fecha: json['fecha'],
      cantidad: json['cantidad'],
      nombre_producto: json['nombre_producto'],
      descripcion: json['descripcion'],
      precio_producto: json['precio_producto'],
    );
  }

  Map<String,dynamic> toJson() => {

    'fecha':fecha,
    'cantidad': cantidad,
    'nombre_producto': nombre_producto,
    'descripcion': descripcion,
    'precio_producto': precio_producto

  };



}

