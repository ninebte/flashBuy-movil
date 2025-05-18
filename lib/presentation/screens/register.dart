import 'package:dio/dio.dart';
import 'package:untitled/presentation/screens/home.dart';
import 'package:untitled/presentation/screens/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final dio = Dio();
  final TextEditingController nombre = TextEditingController();
  final TextEditingController apellido = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController contrasena = TextEditingController();
  Future<void> registerUser(context) async {
    try {
      final response = await dio.post("http://192.168.1.77:4000/cliente", data: {
        "nombre": nombre.text,
        "apellido": apellido.text,
        "email": email.text,
        "contrasena": contrasena.text
      });
        print(response);
      if (response.data["status"] == 200) {
        print("Usuario registrado con éxito");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      } else {
        print("Error al registrar el usuario");
      }
    } catch (e) {
      print(" Error al registrar el usuario: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/6863/6863834.png",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text("FlasBuy",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E50),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: nombre,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  prefixIcon: const Icon(Icons.person),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: InputBorder.none,
                  fillColor: Color(0XFFF4F6F7),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: apellido,
                decoration: InputDecoration(
                  labelText: 'Apellido',
                  prefixIcon: const Icon(Icons.person),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: InputBorder.none,
                  fillColor: Color(0XFFF4F6F7),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  prefixIcon: const Icon(Icons.email),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: InputBorder.none,
                  fillColor: Color(0XFFF4F6F7),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: contrasena,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  prefixIcon: const Icon(Icons.lock),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: InputBorder.none,
                  fillColor: Color(0XFFF4F6F7),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: contrasena,
                decoration: InputDecoration(
                  labelText: 'Confirmar Contraseña',
                  prefixIcon: const Icon(Icons.lock),
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  border: InputBorder.none,
                  fillColor: Color(0XFFF4F6F7),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xFF3498DB), width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      registerUser(context);

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF3498DB),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text('Registrar',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  )),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Ya tienes una cuenta?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2C3E50),
                    ),
                    children: [
                      TextSpan(
                        text: ' Iniciar Sesion',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF3498DB),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
