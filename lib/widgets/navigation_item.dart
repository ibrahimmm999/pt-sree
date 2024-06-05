import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sree/providers/page_provider.dart';
import 'package:sree/shared/theme.dart';

class NavigationItems extends StatelessWidget {
  const NavigationItems({super.key, required this.text, required this.index});

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);

    return GestureDetector(
      onTap: () {
        pageProvider.setCurrPage = index;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(text,
              textAlign: TextAlign.center,
              style: primaryText.copyWith(fontWeight: FontWeight.bold)),
          Container(
            height: 3,
            width: (MediaQuery.of(context).size.width / 3) - 14,
            decoration: BoxDecoration(
              color: pageProvider.currPage == index ? darkBlue : Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
