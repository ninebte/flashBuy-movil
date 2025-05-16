class EntityCarritoProducto {
  final int carrito_id;
  final int cantidad;
  final DateTime fecha_agregado;
  final int? carritoId;
  final int? productoCodigo;
  final int? producto_codigo;


  EntityCarritoProducto({
    required this.carrito_id,
    required this.cantidad,
    required this.fecha_agregado,
    this.carritoId,
    this.productoCodigo,
    this.producto_codigo
  });
}