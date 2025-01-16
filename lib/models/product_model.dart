class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final RatingModel rating;
  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    // print("jsonData['price'] type: ${jsonData["price"].runtimeType}");
    // double ddd = jsonData["price"].toDouble();
    // print("ddd type: ${ddd.runtimeType}");

    return ProductModel(
        id: jsonData["id"],
        title: jsonData["title"],
        price: jsonData["price"].toDouble(),
        description: jsonData["description"],
        image: jsonData["image"],
        rating: RatingModel.fromJson(jsonData['rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'].toDouble(),
      count: jsonData['count'],
    );
  }
}
