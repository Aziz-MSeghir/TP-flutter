// cart_model.dart
class CartItem {
  final String id;
  final String title;
  final String imageUrl;
  final double price;
  int quantity;

  CartItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.price,
    this.quantity = 1,
  });

  // CartItem.fromMap(Map<dynamic, dynamic> res)
  //     : id = res['id'],
  //       title = res['title'],
  //       imageUrl = res['imageUrl'],
  //       price = res['price'],
  //       quantity = res['quantity'];

  // Map<String, Object?> toMap() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'imageUrl': imageUrl,
  //     'price': price,
  //     'quantity': quantity,
  //   };
  // }

  void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }
}
