import 'package:uuid/uuid.dart';

class CartModel {
  late final String id;
  final String productId;
  final String productName;
  final int initialPrice;
  final int productPrice;
  final int qty;
  final String unitTag;
  final String imgUrl;

  CartModel({
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.qty,
    required this.unitTag,
    required this.imgUrl,
  }) : id = const Uuid().v4();

  static CartModel fromJSON(Map<String, dynamic> map) {
    return CartModel(
      productId: map['productId'],
      productName: map['productName'],
      initialPrice: map['initialPrice'],
      productPrice: map['productPrice'],
      qty: map['qty'],
      unitTag: map['unitTag'],
      imgUrl: map['imgUrl'],
    );
  }

  Map<String, dynamic> toJSON() {
    return {
      'productId': productId,
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'qty': qty,
      'unitTag': unitTag,
      'imgUrl': imgUrl,
    };
  }
}
