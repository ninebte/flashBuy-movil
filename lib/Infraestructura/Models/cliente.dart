import '';
import '../../Domains/Entity/cliente.dart';
class ClienteModel extends EntityCliente {
ClienteModel({
  required super.id,
  required super.nombre,
  required super.email,
  required super.contrasena,
  required super.fecha_registro,
  required super.apellido,
});

factory ClienteModel.fromJson(Map<String, dynamic> json) {
  return ClienteModel(
    id: json['id'],
    nombre: json['nombre'],
    email: json['email'],
    contrasena: json['contrasena'],
    fecha_registro: json['fecha_registro'],
    apellido: json['apellido']
  );
}
Map<String, dynamic> toJson() {
  return {
    'id': id,
    'nombre': nombre,
    'email': email,
    'contrasena':contrasena,
    'fecha_registro': fecha_registro,
    'apellido':apellido
  };
}

ClienteModel copyWith({
    int? id,
    String? nombre,
    String? email,
    String? contrasena,
    DateTime? fecha_registro,
    String? apellido,
  }) {
  return ClienteModel(
    id: id ?? this.id,
    nombre: nombre ?? this.nombre,
    email: email ?? this.email,
    contrasena: contrasena ?? this.contrasena,
    fecha_registro: fecha_registro ?? this.fecha_registro,
    apellido: apellido ?? this.apellido,
  );
  }
}