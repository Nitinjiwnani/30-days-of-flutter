import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';

import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get darkTheme => null;

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(     
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/" : ((context) => LoginPage()), //either this or add home: HomePage(), b/w 13 & 14 
          MyRoutes.homeRoute : ((context) => HomePage()),
          MyRoutes.loginRoute: ((context) => LoginPage())
        },
    );
  }
}
