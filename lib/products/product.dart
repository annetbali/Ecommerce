// import 'package:flutter/material.dart';

// Define the Product class
class Product {
  final String name;
  final String category;
  final String imageUrl;
  final double price;

  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
  });
}

List<Product> allProducts = [
  Product(
    name: 'Phone',
    category: 'Electronics',
    imageUrl: 'images/phone.jpg',
    price: 599.99,
  ),
  Product(
    name: 'Laptop',
    category: 'Electronics',
    imageUrl: 'images/laptop.jpg',
    price: 1299.99,
  ),
  Product(
    name: 'Parcoletor', 
    category: 'Electronics',
    imageUrl: 'images/electronics1.jpg', 
    price: 149.99,
  ),
  Product(
    name: 'Phillips Flat Iron', 
    category: 'Electronics',
    imageUrl: 'image_url_2', 
    price: 149.99,
  ),
  Product(
    name: 'T-Shirt',
    category: 'Clothing',
    imageUrl: 'images/tshirt.jpg',
    price: 29.99,
  ),
  Product(
    name: 'Jean Dress', 
    category: 'Clothing', 
    imageUrl: 'image_url_1', 
    price: 99.99,
  ),
  Product(
    name: 'Flower Dress', 
    category: 'Clothing', 
    imageUrl: 'image_url_2', 
    price: 149.99,
  ),
  Product(
    name: 'Leather Shoe', 
    category: 'Shoes',
    imageUrl: 'image_url_1', 
    price: 99.99,
  ),
  Product(
    name: 'Sneakers', 
    category: 'Shoes',
    imageUrl: 'image_url_2', 
    price: 149.99,
  ),
   Product(
    name: 'Leather Shoe', 
    category: 'Shoes',
    imageUrl: 'image_url_1', 
    price: 99.99,
  ),
  Product(
    name: 'Sneakers', 
    category: 'Shoes',
    imageUrl: 'image_url_2', 
    price: 149.99,
  ),
];

// Organize products into categories
Map<String, List<Product>> categoryProducts = {};

void initializeProducts() {
  // Iterate through all products and add them to their respective categories
  for (var product in allProducts) {
    if (!categoryProducts.containsKey(product.category)) {
      categoryProducts[product.category] = [];
    }
    categoryProducts[product.category]!.add(product);
  }
}

List<Product> cartProducts = []; // Initialize an empty list for the cart
// class Product {
//   final String name;
//   final String category;
//   final String imageUrl;
//   final double price;

//   Product({
//     required this.name,
//     required this.category,
//     required this.imageUrl,
//     required this.price,
//   });
// }

// List<Product> cartProducts = [
//   Product(
//     name: 'Phone',
//     category: 'Electronics',
//     imageUrl: 'images/phone.jpg',
//     price: 599.99,
//   ),
//   Product(
//     name: 'T-Shirt',
//     category: 'Clothing',
//     imageUrl: 'images/tshirt.jpg',
//     price: 29.99,
//   ),
  
// ];