import 'dart:developer';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';
import 'package:store/models/product_model.dart';
import 'package:store/services/update_product.dart';
import 'package:store/widgets/custom_bautton.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductPage extends StatefulWidget {
  const UpdateProductPage({super.key});
  static String id = "update product";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image, price;

  // double? price;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    // log(product.id);
    // log(product.title);

    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
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
              // mainAxisAlignment: MainAxisAlignment.center,
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
                    // price = double.parse(data);
                    price = data;
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
                  onTap: () async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await updateProduct(product);
                      log("Updated Successfuly");
                    } on Exception catch (e) {
                      log("Failed");
                      log(e.toString());
                    }
                    isLoading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productName ?? product.title,
        price: price ?? product.price,
        desc: desc ?? product.description,
        image: image ?? product.image,
        category: product.category);
  }
}
