import 'package:animationpageproject/data/listlocation.dart';
import 'package:animationpageproject/widget/pageListHelper.dart';
import 'package:flutter/material.dart';

class PageList extends StatefulWidget {
  const PageList({Key? key}) : super(key: key);

  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  final pageController = PageController(viewportFraction: 0.8);
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) => Stack(
        children: [
           
          PageView.builder(
            controller: pageController,
            itemCount: locations.length,
            itemBuilder: (context, index) {
              final location = locations[index];
              return PageListHelper(location: location);
            },
            onPageChanged: (index) => setState(() => selectedPage = index),
          ),
          Text(
            "${selectedPage + 1}/ ${locations.length}",
            style: TextStyle(color: Color(0xFFEEEEEE)),
          ),
          SizedBox(height: 12),
        ],
      );
}
