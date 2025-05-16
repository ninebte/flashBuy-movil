import '';
import '../../Domains/Entity/producto.dart';
class ProductoModel extends EntityProducto {
  ProductoModel({
    required super.descripcion,
    required super.precio,
    required super.cantidad_almacen,
    required super.fecha_creacion,
    super.codigo
  });

  factory ProductoModel.fromJson(Map<String, dynamic> json) {
    return ProductoModel(
      descripcion: json['descripcion'],
      precio: json['precio'],
      cantidad_almacen: json['cantidad_almacen'],
      fecha_creacion: json['fecha_creacion'],
      codigo: json['codigo']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'descripcion':descripcion,
      'precio':precio,
      'cantidad_almacen': cantidad_almacen,
      'fecha_creacion': fecha_creacion,
      'codigo': codigo
    };
  }

  ProductoModel copyWith({
    String? descripcion,
    double? precio,
    int? cantidad_almacen,
    DateTime? fecha_creacion,
    int? codigo,
  }) {
    return ProductoModel(
       descripcion: descripcion ?? this.descripcion,
        precio: precio ?? this.precio,
        cantidad_almacen: cantidad_almacen ?? this.cantidad_almacen,
        fecha_creacion: fecha_creacion ?? this.fecha_creacion,
        codigo: codigo ?? this.codigo
    );
  }
}