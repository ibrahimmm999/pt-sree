import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sree/detail_product_page.dart';
import 'package:sree/providers/page_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DetailProductPage(),
      ),
    );
  }
}
