import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_provider/screen/cart/provider/cart_provider.dart';
import 'package:product_provider/screen/cart/view/cart_screen.dart';
import 'package:product_provider/screen/product/provider/product_provider.dart';
import 'package:product_provider/screen/product/view/product_screen.dart';
import 'package:product_provider/screen/search/provider/search_provider.dart';
import 'package:product_provider/screen/search/view/search_screen.dart';
import 'package:product_provider/screen/tabbar/view/tabbar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: CupertinoApp(
        theme: CupertinoThemeData(
          brightness: Brightness.light,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (p0) => TabbarScreen(),
          'product_screen': (p0) => ProductScreen(),
          'search_screen': (p0) => SearchScreen(),
          'cart_screen': (p0) => CartScreen(),
        },
      ),
    ),
  );
}
