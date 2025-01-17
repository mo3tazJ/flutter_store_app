class ProductModel {
  final dynamic id;
  final String title;
  // final double price;
  final String price;
  final String description;
  final String image;
  final String category;
  final RatingModel? rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    // print("jsonData['price'] type: ${jsonData["price"].runtimeType}");
    // double ddd = jsonData["price"].toDouble();
    // print("ddd type: ${ddd.runtimeType}");

    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        // price: jsonData["price"].toDouble(),
        price: jsonData["price"].toString(),
        description: jsonData["description"],
        image: jsonData["image"],
        category: jsonData["category"],
        // rating: RatingModel.fromJson(jsonData['rating']),
        rating: jsonData['rating'] == null
            ? null
            : RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final dynamic rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
