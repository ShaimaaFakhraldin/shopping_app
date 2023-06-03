import 'package:flutter/material.dart';
import 'package:shopping_app/data/products.dart';

class ProductListUi extends StatelessWidget {
  const ProductListUi({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount:getList().length,
        itemBuilder: (BuildContext context, int index) {
           return
               Container( height: 100 ,  color: Colors.red,
                 margin: EdgeInsets.symmetric(horizontal: 10 , vertical:  10 ),);

        });
  }

  List<Product>   getList() {
    List<Product> products = List<Product>.generate(100, (index) =>
        Product(name: "Product $index",
            color: Colors.primaries[index % Colors.primaries.length]),);
   return  products ;
  }

}
