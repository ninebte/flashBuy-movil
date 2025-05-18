import 'package:untitled/presentation/screens/add_product.dart';
import 'package:untitled/presentation/screens/home.dart';
import 'package:untitled/presentation/screens/order.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF3498DB),
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(0xFF3498DB),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Agregar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Carrito',
          ),
        ],
        onTap: (index) {
          // Handle navigation based on the index
          switch (index) {
            case 0:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
              break;
            case 1:
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddProductScreen()));
              break;
            case 2:
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
              break;
          }
        },
      ),
    );
  }
}
