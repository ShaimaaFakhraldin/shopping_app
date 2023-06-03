import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/bloc/cart_events.dart';
import 'package:shopping_app/bloc/cart_state.dart';
import 'package:shopping_app/data/products.dart';

class CartBloc extends Bloc<CartEvents ,CartState>{
  final List<Product> _items  = [];
  List<Product> get items =>_items ;

  CartBloc():super(CartEmpty()){

    on<AddToCart>((event, emit) {
      _items.add(event.product);
      emit(ProductAdd(addItems: _items));

    });
    on<RemoveFromCart>((event, emit) {
      _items.remove(event.product);
      emit(ProductRemove(removedItems: _items));
    });



  }
}