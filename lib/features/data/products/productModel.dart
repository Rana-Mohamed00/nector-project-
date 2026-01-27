class ProductModel{

  int id;
  String title;
  String description;
  double price;
  double rating;
  List<String> images;

  ProductModel({
    required this.id, 
    required this.title, 
    required this.description,
    required this.images,
    required this.rating,
    required this.price
    });


    factory ProductModel.fromJson(Map<String,dynamic> json){
      return ProductModel(
        id: json['id'] ??"",
        title: json['title']??"",
        description: json['description'] ?? "",
        images: List<String>.from(json['images']),
        rating: json['rating']??"",
        price: json['price'] ??""
      );

    }

}