import 'package:atom_bank_app_ui/util/product_list.dart';
import 'package:flutter/material.dart';

class ProductColumn extends StatelessWidget {
  const ProductColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
          itemCount: product.length,
          itemBuilder: (context, index) {
            return Image.asset(product[index]['image']);
          }),
    );
  }
}
