import 'package:flutter/cupertino.dart';
import 'package:product_provider/screen/cart/view/cart_screen.dart';
import 'package:product_provider/screen/product/view/product_screen.dart';
import 'package:product_provider/screen/search/view/search_screen.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  List screen = [
    ProductScreen(),
    SearchScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white.withOpacity(0.95),
          border: Border(
            top: BorderSide(
              color: CupertinoColors.black.withOpacity(0.1),
              width: 1,
            ),
          ),
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                ),
                label: "Products"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.shopping_cart,
                ),
                label: "Cart"),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screen[index];
        },
      ),
    );
  }
}
