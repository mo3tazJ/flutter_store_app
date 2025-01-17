import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/screens/update_product_page.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 6,
            shadowColor: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title.substring(0, 12),
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$" "${product.price}",
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -45,
            right: 20,
            child: Image.network(
              product.image,
              height: 80,
              width: 80,
            ),
          ),
        ],
      ),
    );
  }
}
