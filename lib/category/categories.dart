import 'package:flutter/material.dart';
// import '../products/product.dart';
// import '../products/productcard.dart';

class CategoryProductsPage extends StatelessWidget {
  final String category;

  const CategoryProductsPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Implement the UI for the category products page here
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Center(
        child: Text('Products under $category category'),
      ),
    );
  }
}