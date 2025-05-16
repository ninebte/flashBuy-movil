import '';
import '../../Domains/Entity/carritoProducto.dart';
class CarritoProductoModel extends EntityCarritoProducto {
  CarritoProductoModel({
    required super.carrito_id,
    required super.cantidad,
    required super.fecha_agregado,
    super.carritoId,
    super.productoCodigo,
    super.producto_codigo
  });

  factory CarritoProductoModel.fromJson(Map<String, dynamic> json) {
    return CarritoProductoModel(
        carrito_id: json['carrito_id'],
        cantidad: json['cantidad'],
        fecha_agregado: json['fecha_agregado'],
        carritoId: json['carritoId'],
        productoCodigo: json['productoCodigo'],
        producto_codigo: json['producto_codigo']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'carrito_id':carrito_id,
      'cantidad':cantidad,
      'fecha_agregado':fecha_agregado,
      'carritoId':carritoId,
      'productoCodigo':productoCodigo,
      'producto_codigo':producto_codigo
    };
  }

  CarritoProductoModel copyWith({
    int? carrito_id,
    int? cantidad,
    DateTime? fecha_agregado,
    int? carritoId,
    int? productoCodigo,
    int? producto_codigo
  }) {
    return CarritoProductoModel(
        carrito_id: carrito_id ?? this.carrito_id,
        cantidad: cantidad ?? this.cantidad,
        fecha_agregado: fecha_agregado ?? this.fecha_agregado,
        carritoId: carritoId ?? this.carritoId,
        productoCodigo: productoCodigo ?? this.productoCodigo,
        producto_codigo: producto_codigo ?? this.producto_codigo
    );
  }
}