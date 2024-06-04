import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sree/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

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
                  style: TextStyle(color: Color(0xff17234D), fontSize: 20),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.share))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text("CAS Number :"), Text("138-86-3")],
                ),
                Column(
                  children: [Text("HS Code :"), Text("-")],
                ),
                Column(
                  children: [Text("Formula :"), Text("C10H16")],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff123C69))),
                    onPressed: () {},
                    child: Text(
                      "Download TDS",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff123C69))),
                    onPressed: () {},
                    child: Text(
                      "Download TDS",
                      style: TextStyle(color: Colors.white),
                    ))
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
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                  height: 60,
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1BA2CA)),
                  child: Image.asset('assets/cart.png'))
            ],
          ),
          card(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Basic Information"),
              Text("IUPAC Name : C10H16"),
              Text("Appearance : Clear Liquid"),
              Text("Common Name : Dipentene"),
              Text("Industry"),
              Text("Pine Derivative : Lorem ipsum dolor sit"),
              Text("Lorem ipsum dolor sit amet : Pine Derivative"),
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
    );
  }
}
