import 'package:flutter/material.dart';
import '../cart/cart.dart';
import '../category/categories.dart';
import '../home/navbar.dart';
import '../products/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart), 
              onPressed: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(builder: (context) => const CartPage(cartItems: [])), 
                );
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             // Banners Section
            _buildSectionTitle('Banners'),
            _buildBannerList([
              _buildBannerItem('Summer Sale', 'images/flash-sale-banner.jpg'),
              _buildBannerItem('Clearance Sale', 'images/clearance-sale-banner.jpg'),
            ]),
            
              // Categories Section
            _buildSectionTitle('Categories'),
            _buildCategoryList(
              context,
              ['Electronics', 'Clothing', 'Shoes']
            ),

             // Featured Products Section
            _buildSectionTitle('Featured Products'),
            _buildProductList([
              _buildProductItem('Samsung', 'images/samsung-electronics.png'),
              _buildProductItem('Clothing', 'images/clothing.jpg'),
              _buildProductItem('Shoes', 'images/shoe.jpg'),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

   Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildProductList(List<Widget> products) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: products,
      ),
    );
  }

  Widget _buildProductItem(String productName, String imagePath) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            productName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryList(BuildContext context, List<String> categories) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map(
              (category) => _buildCategoryItem(
                context,
                category,
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String categoryName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
            MaterialPageRoute(
              builder: (context) => CategoryProductsPage(category: categoryName),
            ),
        );
      },
      child: Container(
        width: 100,
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 33, 243, 65),
              child: Icon(
                Icons.shopping_bag,
                size: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              categoryName,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildBannerList(List<Widget> banners) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: banners,
      ),
    );
  }

  Widget _buildBannerItem(String bannerText, String imagePath) {
    return Container(
      width: 250,
      margin: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          height: 100,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  //     body: ListView.builder(
  //       itemCount: categoryProducts.length,
  //       itemBuilder: (context, index) {
  //         String category = categoryProducts.keys.elementAt(index);
  //         List<Product>? products = categoryProducts[category];

  //         return Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.all(8.0),
  //               child: Text(
  //                 category,
  //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //               ),
  //             ),
  //             GridView.builder(
  //               shrinkWrap: true,
  //               physics: NeverScrollableScrollPhysics(),
  //               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 2,
  //                 crossAxisSpacing: 8,
  //                 mainAxisSpacing: 8,
  //               ),
  //               itemCount: products!.length,
  //               itemBuilder: (context, index) {
  //                 Product product = products[index];
  //                 return Card(
  //                   child: Column(
  //                     crossAxisAlignment: CrossAxisAlignment.start,
  //                     children: [
  //                       Expanded(
  //                         child: Image.network(
  //                           product.imageUrl,
  //                           fit: BoxFit.cover,
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text(
  //                           product.name,
  //                           style: TextStyle(fontWeight: FontWeight.bold),
  //                         ),
  //                       ),
  //                       Padding(
  //                         padding: const EdgeInsets.all(8.0),
  //                         child: Text('\$${product.price.toString()}'),
  //                       ),
  //                       ElevatedButton(
  //                         onPressed: () {
  //                           addToCart(product);
  //                         },
  //                         child: Text('Add to Cart'),
  //                       ),
  //                     ],
  //                   ),
  //                 );
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }

  void addToCart(Product product) {
    cartProducts.add(product);
    // Optionally, you can show a snackbar or perform any other action here
  }
}

