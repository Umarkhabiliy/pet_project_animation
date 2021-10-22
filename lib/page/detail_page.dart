import 'package:animationpageproject/data/heroTag.dart';
import 'package:animationpageproject/model/location.dart';
import 'package:animationpageproject/widget/detail_infowidget.dart';
import 'package:animationpageproject/widget/hero_widget.dart';
import 'package:animationpageproject/widget/latlong_widget.dart';
import 'package:animationpageproject/widget/review_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, this.location, this.animation}) : super(key: key);
  final Location? location;
  final Animation<double>? animation;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("INTERESTS"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            SizedBox(width: 10),
          ],
          leading: Icon(Icons.search),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox.expand(
                    child: HeroWidget(
                      tag: HeroTag.image(location!.urlImage!),
                      child: GestureDetector(
                          onPanDown: (e) {
                            Navigator.of(context).pop();
                          },
                          child: Image.asset(location!.urlImage!,
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: LatLongWidget(location: location),
                  )
                ],
              ),
            ),
            DetailInfo(location: location),
            Expanded(
              flex: 5,
              child: ReviewWidget(
                location: location,
                animation: animation,
              ), // loci animi
            )
          ],
        ),
      ),
    );
  }
}
