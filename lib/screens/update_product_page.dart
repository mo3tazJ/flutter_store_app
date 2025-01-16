import 'package:flutter/material.dart';
import 'package:store/widgets/custom_bautton.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  UpdateProductPage({super.key});
  static String id = "update product";
  String? productName, desc, image;
  double? price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Update Product",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 64,
              ),
              CustomTextField(
                hintText: "Product Name",
                onChanged: (data) {
                  productName = data;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: "Description",
                onChanged: (data) {
                  desc = data;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: "Price",
                inputType: const TextInputType.numberWithOptions(),
                onChanged: (data) {
                  price = double.parse(data);
                },
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                hintText: "Image",
                onChanged: (data) {
                  image = data;
                },
              ),
              const SizedBox(
                height: 64,
              ),
              CustomButon(
                text: "Update",
                bgColor: Colors.lightBlueAccent,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
