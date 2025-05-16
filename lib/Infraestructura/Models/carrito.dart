import '';
import '../../Domains/Entity/carrito.dart';
class CarritoModel extends EntityCarrito {
  CarritoModel({
    required super.id,
    required super.cliente_id,
    required super.activo,
    required super.fecha_creacion,
    super.clienteId
  });

  factory CarritoModel.fromJson(Map<String, dynamic> json) {
    return CarritoModel(
        id: json['id'],
        cliente_id: json['cliente_id'],
        activo: json['activo'],
        fecha_creacion: json['fecha_creacion'],
        clienteId: json['clienteId'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id':id,
      'cliente_id': cliente_id,
      'activo': activo,
      'fecha_creacion': fecha_creacion,
      'clienteId': clienteId
    };
  }

  CarritoModel copyWith({
    int? id,
    int? cliente_id,
    bool? activo,
    DateTime? fecha_creacion,
    int? clienteId,
  }) {
    return CarritoModel(
      id: id ?? this.id,
      cliente_id: cliente_id ?? this.cliente_id,
      activo: activo ?? this.activo,
      fecha_creacion: fecha_creacion ?? this.fecha_creacion,
      clienteId: clienteId ?? this.clienteId
    );
  }
}