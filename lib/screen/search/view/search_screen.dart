import 'package:flutter/cupertino.dart';
import 'package:product_provider/screen/search/provider/search_provider.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchProvider? searchProvidertrue;
  SearchProvider? searchProviderfalse;

  @override
  Widget build(BuildContext context) {
    searchProvidertrue = Provider.of<SearchProvider>(context, listen: true);
    searchProviderfalse = Provider.of<SearchProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.systemGrey5,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        CupertinoIcons.search,
                        color: CupertinoColors.black.withOpacity(0.2),
                        size: 24,
                      ),
                    ),
                    Text(
                      "shirt",
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        CupertinoIcons.clear_circled_solid,
                        color: CupertinoColors.black.withOpacity(0.3),
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchProviderfalse!.imageList.length,
                itemBuilder: (context, index) {
                  return searchUI(
                    searchProviderfalse!.imageList[index],
                    searchProviderfalse!.nameList[index],
                    searchProviderfalse!.priceList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchUI(String image, String name, String price) {
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
                "$image",
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
