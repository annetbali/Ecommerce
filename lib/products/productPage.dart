import 'package:flutter/material.dart';
import '../cart/cart.dart';
import 'product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<Product> products = [
    // Product(name: '', imageUrl: 'image_url_1', price: 99.99),
    // Product(name: 'Parcoletor', imageUrl: 'images/electronics1.jpg', price: 149.99),
    // Product(name: 'Glass Parcoletor', imageUrl: 'image_url_1', price: 99.99),
    // Product(name: 'Phillips Flat Iron', imageUrl: 'image_url_2', price: 149.99),
    // Product(name: 'Jean Dress', imageUrl: 'image_url_1', price: 99.99),
    // Product(name: 'Flower Dress', imageUrl: 'image_url_2', price: 149.99),
    // Product(name: 'Leather Shoe', imageUrl: 'image_url_1', price: 99.99),
    // Product(name: 'Sneakers', imageUrl: 'image_url_2', price: 149.99),
    // Add more products as needed
  ];

    List<Product> cartItems = []; // Cart items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return _buildProductItem(context, products[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToCartPage(context);
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }

  Widget _buildProductItem(BuildContext context, Product product) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(product.name),
          subtitle: Text('\$ ${product.price}'),
          trailing: ElevatedButton(
            onPressed: () {
              setState(() {
                cartItems.add(product); // Add product to cart
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${product.name} added to cart'),
                    duration: const Duration(seconds: 2),
                  ),
                );
              });
            },
            child: const Text('Add to Cart'),
          ),
        ),
      ),
    );
  }

  void _navigateToCartPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(cartItems: cartItems),
      ),
    );
  }
}