import 'package:e_commerce_app/resources/color/app_color.dart';
import 'package:e_commerce_app/resources/values/constant.dart';
import 'package:e_commerce_app/screen/product_page/components/product_item_widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  TextEditingController searchController = TextEditingController();
  bool showSortIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _searchBoxWidget(),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  showSortIcon
                      ? GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(5)),
                              ),
                              builder: (context) {
                                return Container(
                                  padding: const EdgeInsets.all(16),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text("Sort By",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(Icons.cancel))
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Text("Price: High to Low",
                                          style: AppTexyStyle.largeText(
                                              fontWeight: FontWeight.w400,
                                              context: context)),
                                      const SizedBox(height: 10),
                                      Text("Price: High to High",
                                          style: AppTexyStyle.largeText(
                                              fontWeight: FontWeight.w400,
                                              context: context)),
                                      const SizedBox(height: 10),
                                      Text("Ratting",
                                          style: AppTexyStyle.largeText(
                                              fontWeight: FontWeight.w400,
                                              context: context)),
                                      const SizedBox(height: 20),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: const Icon(
                            Icons.sort,
                            size: 40,
                          ),
                        )
                      : const SizedBox.shrink()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.62,
                  ),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ProductItemWidget();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchBoxWidget() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            constraints: const BoxConstraints(maxWidth: 500),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.greyColor),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: [
              const Icon(
                Icons.search_rounded,
                size: 30,
              ),
              Expanded(
                  child: TextField(
                cursorHeight: 24,
                cursorColor: Colors.black,
                controller: searchController,
                onChanged: (value) {
                  if (searchController.text.isEmpty) {
                    setState(() {
                      showSortIcon = false;
                    });
                  } else {
                    setState(() {
                      showSortIcon = true;
                    });
                  }
                },
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                  hintText: "Search Anything...",
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greyColor),
                ),
              ))
            ]),
          ),
        ),
      ],
    );
  }
}
