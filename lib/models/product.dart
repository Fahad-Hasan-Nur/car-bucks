import 'dart:convert';

class ProductModel {
  static List<Product> products = [];

  // Get Item by ID
  Product getById(String id) =>
      products.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  Product getByPosition(int pos) => products[pos];
}

class Product {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });

  Product copyWith({
    required String id,
    required String name,
    required String description,
    required num price,
    required String color,
    required String image,
  }) {
    return Product(
      id: id,
      name: name,
      description: description,
      price: price,
      color: color,
      image: image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'desc': description,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    // if (map == null)
    // return null;

    return Product(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, desc: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Product &&
        o.id == id &&
        o.name == name &&
        o.description == description &&
        o.price == price &&
        o.color == color &&
        o.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
