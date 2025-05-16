class EntityCliente {
  final int id;
  final String nombre;
  final String email;
  final String contrasena;
  final DateTime fecha_registro;
  final String apellido;

  EntityCliente({
    required this.id,
    required this.nombre,
    required this.email,
    required this.contrasena,
    required this.fecha_registro,
    required this.apellido,
  });
}