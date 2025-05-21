import 'package:untitled/presentation/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  //funcion busque cliente id y llame buscar carrito producto, boton pagar
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
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'Mis pedidos',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C3E50)),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFfbfcfd),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.image, size: 90, color: Colors.grey),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(width: 10),
                                Text(
                                  'Producto ${index + 1}',
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2C3E50)),
                                ),
                                const SizedBox(height: 5),
                                const Text("\$10.00",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF2C3E50))),
                                const SizedBox(height: 5),
                                const Text(
                                  'Cantidad',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF2C3E50)),
                                ),
                                const SizedBox(height: 5),
                                const Text("1",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF2C3E50))),
                                const SizedBox(height: 5),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Icon(Icons.add_shopping_cart,
                                    size: 35, color: Color(0xFF3498DB)),
                                const SizedBox(width: 20),
                                const Icon(Icons.remove,
                                    size: 35, color: Color(0xFF3498DB)),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                    height: 170,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFFf8f8f8),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'SubTotal',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF2C3E50)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Descuento',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF2C3E50)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Total',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Color(0xFF2C3E50)),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            const Text(
                              '\$100.00',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF2C3E50)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '\$10.00',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF2C3E50)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '\$90.00',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2C3E50)),
                            ),
                          ],
                        )
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFf8f8f8),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(
                        TextSpan(
                          text: 'Total a pagar: ',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF2C3E50),
                          ),
                          children: [
                            TextSpan(
                              text: '\n\$90.00',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF2C3E50),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            const Color(0xFF02a86a),
                          ),
                          iconSize: WidgetStatePropertyAll(
                            20,
                          ),
                          padding: WidgetStatePropertyAll(
                            const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 30,
                            ),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          'Pagar',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
