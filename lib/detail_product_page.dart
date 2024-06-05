import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sree/contents/app_page.dart';
import 'package:sree/contents/desc_page.dart';
import 'package:sree/models/product_model.dart';
import 'package:sree/providers/page_provider.dart';
import 'package:sree/providers/product_provider.dart';
import 'package:sree/shared/theme.dart';
import 'package:sree/widgets/header.dart';
import 'package:sree/widgets/navigation_item.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  List<ProductModel> foundProduct = [];
  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    void updateFound(String value) {
      setState(() {
        if (value.isNotEmpty) {
          foundProduct = productProvider.products
              .where((product) => product.productName
                  .toLowerCase()
                  .contains(value.toLowerCase()))
              .toList();
        } else {
          foundProduct = [];
        }
        print(foundProduct);
      });
    }

    TextEditingController searchController =
        TextEditingController(text: "Dipentene");
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    Widget changeContent() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        height: 60,
        width: double.infinity,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationItems(
              index: 0,
              text: "Description",
            ),
            NavigationItems(
              index: 1,
              text: "Application",
            ),
          ],
        ),
      );
    }

    Widget buildContent() {
      switch (pageProvider.currPage) {
        case 0:
          {
            return const DescPage();
          }
        case 1:
          {
            return const AppPage();
          }
        default:
          {
            return const DescPage();
          }
      }
    }

    Widget card() {
      return Container(
        margin: const EdgeInsets.only(
          top: 130,
          left: 20,
          right: 20,
        ),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(defaultRadius),
              topRight: Radius.circular(defaultRadius)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dipentene",
                  style: primaryText.copyWith(fontSize: 20),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.share))
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "CAS Number :",
                      style: primaryText.copyWith(),
                    ),
                    Text("138-86-3", style: primaryText.copyWith())
                  ],
                ),
                Column(
                  children: [
                    Text("HS Code :", style: primaryText.copyWith()),
                    Text("-", style: primaryText.copyWith())
                  ],
                ),
                Column(
                  children: [
                    Text("Formula :", style: primaryText.copyWith()),
                    Text("C10H16", style: primaryText.copyWith())
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(darkBlue)),
                      onPressed: () {},
                      child: const Text(
                        "Download TDS",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                SizedBox(
                  width: defaultMargin,
                ),
                Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(darkBlue)),
                      onPressed: () {},
                      child: const Text(
                        "Download MSDS",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        padding: const EdgeInsets.only(
          top: 80,
          bottom: 80,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: TextFormField(
                      style: primaryText,
                      onChanged: (value) => updateFound(value),
                      controller: searchController,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Container(
                    height: 60,
                    margin: const EdgeInsets.only(left: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff1BA2CA)),
                    child: Image.asset('assets/cart.png'))
              ],
            ),
          ),
          card(),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin * 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Basic Information",
                  style: primaryText,
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("IUPAC Name : C10H16", style: primaryText),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("Appearance : Clear Liquid", style: primaryText),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("Common Name : Dipentene", style: primaryText),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("Industry", style: primaryText),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("Pine Derivative : Lorem ipsum dolor sit",
                    style: primaryText),
                SizedBox(
                  height: defaultMargin,
                ),
                Text("Lorem ipsum dolor sit amet : Pine Derivative",
                    style: primaryText),
                const SizedBox(
                  height: 48,
                ),
                changeContent(),
                SizedBox(
                  height: defaultMargin,
                ),
                buildContent()
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
        body: Stack(
          children: [
            const Header(
              height: 0.3,
            ),
            body(),
          ],
        ),
        bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.chat),
                  const SizedBox(
                    width: 18,
                  ),
                  const Icon(Icons.shopping_cart),
                  const SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(darkBlue)),
                        onPressed: () {},
                        child: const Text(
                          "Send Inquiry",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            )));
  }
}
