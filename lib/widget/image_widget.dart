import 'package:animationpageproject/data/heroTag.dart';
import 'package:animationpageproject/model/location.dart';
import 'package:animationpageproject/widget/hero_widget.dart';
import 'package:animationpageproject/widget/latlong_widget.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  
  const ImageWidget({Key? key, required this.location}) : super(key: key);
  final Location? location;
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
  
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: size.height * 0.5,
      width: size.width * 0.8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 2, spreadRadius: 1)
          ],
        ),
        child: Stack(
          children: [
            buildimage(),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [buildTopText(), LatLongWidget(location: location)],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildimage() => SizedBox.expand(
        child: HeroWidget(
          tag: HeroTag.image(location!.urlImage!),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              location!.urlImage!,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
  Widget buildTopText() => Text(
        location!.name!,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      );
}
