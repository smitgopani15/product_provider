import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_provider/screen/product/provider/product_provider.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductProvider? productProvidertrue;
  ProductProvider? productProviderfalse;

  @override
  Widget build(BuildContext context) {
    productProvidertrue = Provider.of<ProductProvider>(context, listen: true);
    productProviderfalse = Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            Container(
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey5,
                border: Border(
                  bottom: BorderSide(
                    color: CupertinoColors.systemGrey3,
                    width: 1,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Cupertino Store",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black.withOpacity(0.85),
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: productProviderfalse!.imageList.length,
                itemBuilder: (context, index) {
                  return productUI(
                    productProviderfalse!.imageList[index],
                    productProviderfalse!.nameList[index],
                    productProviderfalse!.priceList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productUI(String image, String name, String price) {
    return Container(
      height: 80,
      width: double.infinity,
      color: CupertinoColors.white,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 80,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: CupertinoColors.systemGrey3,
              ),
              child: Image.asset(
                "${image}",
                fit: BoxFit.contain,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 15,
              ),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: CupertinoColors.black.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${name}",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$${price}",
                          style: TextStyle(
                            fontSize: 13,
                            color: CupertinoColors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.add_circled,
                      size: 21,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
