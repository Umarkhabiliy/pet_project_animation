import 'package:animationpageproject/model/location.dart';
import 'package:animationpageproject/page/detail_page.dart';
import 'package:animationpageproject/widget/expanded_content_widget.dart';
import 'package:animationpageproject/widget/image_widget.dart';
import 'package:flutter/material.dart';

class PageListHelper extends StatefulWidget {
  final Location? location;
  const PageListHelper({Key? key, this.location}) : super(key: key);

  @override
  _PageListHelperState createState() => _PageListHelperState();
}

class _PageListHelperState extends State<PageListHelper> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            child: ExpandedContentWidget(location: widget.location),
            duration: Duration(milliseconds: 100),
            bottom: isExpanded ? 40 : 100,
            width: isExpanded ? size.width * 0.78 : size.width * 0.7,
            height: isExpanded ? size.height * 0.6 : size.height * 0.5,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 100),
            bottom: isExpanded ? 150 : 100,
            child: GestureDetector(
                onTap: openDetailPage,
                onPanUpdate: onPanUpdate,
                child: ImageWidget(
                  location: widget.location,
                )),
          ),
        ],
      ),
    );
  }

  void openDetailPage() {
    if (!isExpanded) {
      setState(() {
        isExpanded = true;
        return;
      });
      Navigator.of(context).push(
        PageRouteBuilder(
            transitionDuration: Duration(seconds: 1),
            reverseTransitionDuration: Duration(seconds: 1),
            pageBuilder: (context, animation, secondaryAnimation) {
              final curvedAnimation =
                  CurvedAnimation(parent: animation, curve: Interval(0, 0.5));
              return FadeTransition(
                opacity: curvedAnimation,
                child: DetailPage(
                  location: widget.location,
                  animation: animation,
                ),
              );
            }),
      );
    }
  }

  void onPanUpdate(DragUpdateDetails details) {
    if (details.delta.dy < 0) {
      setState(() {
        isExpanded = true;
      });
    } else if (details.delta.dy > 0) {
      setState(() {
        isExpanded = false;
      });
    }
  }
}
