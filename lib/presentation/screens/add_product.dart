import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/presentation/widgets/navigation_bar.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}
class _AddProductScreenState extends State<AddProductScreen> {
  String barcode = '';
  final dio = Dio();
  Future<void> openCamera() async {
    String? res = await SimpleBarcodeScanner.scanBarcode(
      context,
      barcodeAppBar: const BarcodeAppBar(
        appBarTitle: 'Test',
        centerTitle: false,
        enableBackButton: true,
        backButtonIcon: Icon(Icons.arrow_back_ios),
      ),
      isShowFlashIcon: true,
      delayMillis: 2000,
    );

    if (res != null) {
      setState(() {
        barcode = res;
      });
    }
    encontrarProducto();
  }

  //Mostar producto y agregar carrito

  void mensaje(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Future<void> encontrarProducto() async{
    try {
      if (barcode.isEmpty){
        mensaje("Codigo invalido");
        return;
      }
      final response = await dio.get("http://192.168.1.77:4000/producto/$barcode");
      print(response);
      if (response.data["status"] == 200) {
        print("Producto agregado");
        mensaje("se encontro el producto");
      } else {
        print("Error al agregar producto");
      }
    } catch (e) {
      print(" Error al agregar producto: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('FlasBuy',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        backgroundColor: const Color(0xFF3498DB),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Agregar Producto",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C3E50))),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                openCamera();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3498DB),
                padding: const EdgeInsets.symmetric(horizontal: 50),
              ),
              child: const Text('Escanear código de barras',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(height: 20),
            Text(
              barcode.isNotEmpty
                  ? 'Código de barras: $barcode'
                  : 'No se ha escaneado ningún código de barras',
              style: const TextStyle(fontSize: 16, color: Color(0xFF2C3E50)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
