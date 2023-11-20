// import 'package:flutter/material.dart';

// import 'product.dart';

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Image.network(
//               product.imageUrl,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               product.name,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text('\$${product.price.toString()}'),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               addToCart(product);
//             },
//             child: const Text('Add to Cart'),
//           ),
//         ],
//       ),
//     );
//   }

//   void addToCart(Product product) {
//     cartProducts.add(product);
//     // Optionally, you can show a snackbar or perform any other action here
//   }
// }