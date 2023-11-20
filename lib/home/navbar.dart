import 'package:flutter/material.dart';
import '../category/categories.dart';
import '../screens/homeScreen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0, // Set the initial index
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Electronics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Clothing',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Shoes',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.shopping_cart),
        //   label: 'Cart',
        // ),
      ],
      onTap: (int index) {
        // Handle navigation to different pages based on the index
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryProductsPage(category: 'Electronics')),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryProductsPage(category: 'Clothing')),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoryProductsPage(category: 'Shoes')),
            );
            break;
        }
      },
    );
  }
}
