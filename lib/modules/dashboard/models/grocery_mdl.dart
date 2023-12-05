import 'dart:convert';

class GroceryModel {
  final int userId;
  final int id;
  final String title;
  final String body;
  GroceryModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory GroceryModel.fromMap(Map<String, dynamic> map) {
    return GroceryModel(
      userId: map['userId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GroceryModel.fromJson(String source) => GroceryModel.fromMap(json.decode(source));
}
//===============================================
class GroceryModelXX {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  GroceryModelXX({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class GroceryData {
  static List<Map<String, dynamic>> groceryItems = [
    {
      'id': '1',
      'name': 'Bananas',
      'description': 'Fresh bananas from Ecuador',
      'price': 0.49,
      'imageUrl':
          'https://cdn.shopify.com/s/files/1/0258/4307/3103/products/asset_2_800x.jpg?v=1571839043',
    },
    {
      'id': '2',
      'name': 'Grapes',
      'description': 'Organic, locally grown apples',
      'price': 1.99,
      'imageUrl':
          'https://www.jiomart.com/images/product/original/590000452/sharad-seedless-grapes-1-kg-product-images-o590000452-p590116963-0-202203171004.jpg',
    },
    {
      'id': '3',
      'name': 'Bread',
      'description': 'Brown Bread, Tasty',
      'price': 2.49,
      'imageUrl': 'https://thumbs.dreamstime.com/b/bread-cut-14027607.jpg',
    },
    {
      'id': '4',
      'name': 'Brown Eggs',
      'description': 'Farm-fresh brown eggs',
      'price': 3.99,
      'imageUrl':
          'https://cdn.britannica.com/94/151894-050-F72A5317/Brown-eggs.jpg',
    },
  ];
}
