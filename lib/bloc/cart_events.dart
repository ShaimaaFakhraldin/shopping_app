import '../data/products.dart';

abstract class CartEvents {

}


class AddToCart extends CartEvents {
  final Product product ;
  AddToCart({ required this.product});
}

class RemoveFromCart extends CartEvents {
  final Product product ;
  RemoveFromCart({ required this.product});
}