import 'package:dio/dio.dart';
import 'package:untitled/presentation/screens/home.dart';
import 'package:untitled/presentation/screens/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final dio = Dio();
  final TextEditingController email = TextEditingController();
  final TextEditingController contrasena = TextEditingController();
  Future<void> loginUser(context) async {
    try {
      final response = await dio.post("http://192.168.1.77:4000/cliente/login", data: {
        "email": email.text,
        "contrasena": contrasena.text
      });
      print(response);
      if (response.data["status"] == 200) {
        print("Usuario inicio sesion con éxito");
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ));
      } else {
        print("Error al iniciar sesion el usuario");
      }
    } catch (e) {
      print(" Error al iniciar sesion el usuario: $e");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            const Text(
              'Iniciar Sesion',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C3E50),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
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
            const SizedBox(height: 10),
            TextField(
              controller: contrasena,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                labelText: 'Password',
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
              obscureText: true,
            ),
            const SizedBox(height: 20),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    /*Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));*/
                    loginUser(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF3498DB),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Iniciar Sesion',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                )),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterScreen(),
                    ));
              },
              child: const Text.rich(
                TextSpan(
                  text: 'Aun no tienes cuenta? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2C3E50),
                  ),
                  children: [
                    TextSpan(
                      text: 'Crea una cuenta',
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
      ),
    );
  }
}
