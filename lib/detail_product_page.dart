import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sree/contents/app_page.dart';
import 'package:sree/contents/desc_page.dart';
import 'package:sree/providers/page_provider.dart';
import 'package:sree/shared/theme.dart';
import 'package:sree/widgets/header.dart';
import 'package:sree/widgets/navigation_item.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
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
          bottom: 24,
        ),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
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
                        "Download TDS",
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
          left: 20,
          right: 20,
          bottom: 20,
        ),
        children: [
          Row(
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
          card(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Basic Information",
                style: primaryText,
              ),
              SizedBox(
                height: 20,
              ),
              Text("IUPAC Name : C10H16", style: primaryText),
              SizedBox(
                height: 20,
              ),
              Text("Appearance : Clear Liquid", style: primaryText),
              SizedBox(
                height: 20,
              ),
              Text("Common Name : Dipentene", style: primaryText),
              SizedBox(
                height: 20,
              ),
              Text("Industry", style: primaryText),
              SizedBox(
                height: 20,
              ),
              Text("Pine Derivative : Lorem ipsum dolor sit",
                  style: primaryText),
              SizedBox(
                height: 20,
              ),
              Text("Lorem ipsum dolor sit amet : Pine Derivative",
                  style: primaryText),
              const SizedBox(
                height: 48,
              ),
              changeContent(),
              const SizedBox(
                height: 20,
              ),
              buildContent()
            ],
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.chat),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(Icons.shopping_cart),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff123C69))),
                          onPressed: () {},
                          child: Text(
                            "Send Inquiry",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
