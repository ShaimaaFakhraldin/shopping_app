import '../data/products.dart';

abstract class CartState {
  final List<Product> cartItems ;
  const CartState({required this.cartItems});

}

class CartEmpty extends CartState {
  CartEmpty():super(cartItems: []);
}


class CartItemLoading extends CartState {
  CartItemLoading(): super (cartItems: []);

}

class ProductAdd extends CartState {
  final List<Product> addItems ;

  ProductAdd({required  this.addItems}):super (cartItems: addItems);

}


class ProductRemove extends CartState {
  final List<Product> removedItems ;

  ProductRemove({required  this.removedItems}):super (cartItems: removedItems);

}


