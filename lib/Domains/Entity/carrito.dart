class EntityCarrito {
  final int id;
  final int cliente_id;
  final bool activo;
  final DateTime fecha_creacion;
  final int? clienteId;


  EntityCarrito({
    required this.id,
    required this.cliente_id,
    required this.activo,
    required this.fecha_creacion,
    this.clienteId,
  });
}