import 'package:flutter/material.dart';
import '../products/product.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key, required List<Product> cartItems}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              cartProducts[index].imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            title: Text(cartProducts[index].name),
            subtitle: Text('\$ ${cartProducts[index].price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () {
                // Remove product from the cart
                setState(() {
                  cartProducts.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Total: \$ ${calculateTotalPrice().toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  // Function to calculate the total price of items in the cart
  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var product in cartProducts) {
      totalPrice += product.price;
    }
    return totalPrice;
  }
}