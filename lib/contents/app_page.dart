import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sree/shared/theme.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "APP PAGE",
            style: primaryText.copyWith(fontSize: 20),
          ),
          Text(
            "Dipentene (also called D-Limonene), is a terpene liquid found in various volatile oils such as cardamon, mace, nutmeg , turpentine oil. Dipentene is mainly composed of Limonene, beta-Phellandrene, Myrcene and other terpenes.",
            style: primaryText,
          )
        ],
      ),
    );
  }
}
