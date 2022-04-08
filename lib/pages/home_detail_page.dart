import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key,required this.catalog}) 
  :super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Image.network(catalog.image),
      ]),
    );
  }
}
