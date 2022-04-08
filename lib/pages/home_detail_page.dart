import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key,required this.catalog}) 
  :super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(
                   onPressed: () {},
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(
                       MyTheme.darkBluishColor,
                    ),
                    shape: MaterialStateProperty.all(
                      StadiumBorder())),
                   child: "Add to cart".text.make(),
                   ).wh(120, 30)
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                    .color(MyTheme.darkBluishColor)
                    .bold
                    .make(),
            catalog.desc.text.textStyle(context.captionStyle!).xl.make(),
            10.heightBox,
            "Nonumy no est rebum est dolor amet et justo diam. Takimata sit sanctus sit eirmod gubergren ut dolor amet amet. Dolor justo at et eirmod, justo diam eirmod gubergren at consetetur sit aliquyam sea, lorem no sea rebum ut diam voluptua, est elitr dolor consetetur rebum ut clita dolor kasd."
            .text
            .textStyle(context.captionStyle!)
            .make()
            .p16()
                  ],
                ).py64()
              ),
            )
           )
        ]
           ),
      ),
    );
  }
}
