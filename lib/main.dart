import 'package:flutter/material.dart';
import 'package:perfumes_shop/pages/DetailsPage.dart';
import 'package:perfumes_shop/pages/Login.dart';
import 'package:perfumes_shop/pages/checkOut.dart';
import 'package:perfumes_shop/provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:perfumes_shop/pages/lib/home.dart';

import 'Model/StorePage.dart';
import 'Model/servicesPage.dart';
import 'pages/myTabBarPage.dart';

void main(){

  runApp(const MyApp());


}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login() ,
      ),
    );
  }
}

