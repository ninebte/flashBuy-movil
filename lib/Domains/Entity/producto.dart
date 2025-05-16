class EntityProducto {
  final String descripcion;
  final double precio;
  final int cantidad_almacen;
  final DateTime fecha_creacion;
  final int? codigo;


  EntityProducto({
    required this.descripcion,
    required this.precio,
    required this.cantidad_almacen,
    required this.fecha_creacion,
    this.codigo,
  });
}