import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:product_provider/screen/cart/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartProvider? cartProvidertrue;
  CartProvider? cartProviderfalse;

  @override
  Widget build(BuildContext context) {
    cartProvidertrue = Provider.of<CartProvider>(context, listen: true);
    cartProviderfalse = Provider.of<CartProvider>(context, listen: false);
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
                    "Shopping Cart",
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
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: CupertinoColors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
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
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                CupertinoIcons.person_alt,
                                color: CupertinoColors.black.withOpacity(0.2),
                                size: 20,
                              ),
                            ),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: CupertinoColors.black.withOpacity(0.2),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
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
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                CupertinoIcons.mail_solid,
                                color: CupertinoColors.black.withOpacity(0.2),
                                size: 20,
                              ),
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                color: CupertinoColors.black.withOpacity(0.2),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
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
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                CupertinoIcons.location_solid,
                                color: CupertinoColors.black.withOpacity(0.2),
                                size: 20,
                              ),
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                color: CupertinoColors.black.withOpacity(0.2),
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Icon(
                                CupertinoIcons.time,
                                color: CupertinoColors.black.withOpacity(0.2),
                                size: 20,
                              ),
                            ),
                            Text(
                              "Delivery time",
                              style: TextStyle(
                                color: CupertinoColors.black.withOpacity(0.2),
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "${cartProvidertrue!.currentDateTime.day} - ${cartProvidertrue!.currentDateTime.month} - ${cartProvidertrue!.currentDateTime.year} , ${cartProvidertrue!.currentDateTime.hour} : ${cartProvidertrue!.currentDateTime.minute} ",
                              style: TextStyle(
                                color: CupertinoColors.black.withOpacity(0.5),
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 140,
                        child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.dateAndTime,
                          initialDateTime: cartProviderfalse!.currentDateTime,
                          use24hFormat: false,
                          minimumYear: 2001,
                          maximumYear: DateTime.now().year,
                          onDateTimeChanged: (value) {
                            cartProviderfalse!.changedatetime(value);
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: CupertinoColors.systemGrey3,
                                ),
                                child: Image.asset(
                                  "assets/images/cart/1.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Garden strand",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "\$98.00",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:
                                        CupertinoColors.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "\$98.00",
                              style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: CupertinoColors.systemGrey3,
                                ),
                                child: Image.asset(
                                  "assets/images/cart/2.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Stella sunglasses",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "\$58.00",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:
                                        CupertinoColors.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "\$58.00",
                              style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        color: CupertinoColors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: CupertinoColors.systemGrey3,
                                ),
                                child: Image.asset(
                                  "assets/images/cart/3.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Weave keyring",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "\$16.00",
                                  style: TextStyle(
                                    fontSize: 11,
                                    color:
                                        CupertinoColors.black.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "\$16.00",
                              style: TextStyle(
                                fontSize: 16,
                                color: CupertinoColors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Shipping \$21.00",
                              style: TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Tax \$10.32",
                              style: TextStyle(
                                fontSize: 14,
                                color: CupertinoColors.black.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Total \$203.32",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
