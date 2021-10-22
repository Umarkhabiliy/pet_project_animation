import 'package:animationpageproject/data/heroTag.dart';
import 'package:animationpageproject/model/location.dart';
import 'package:animationpageproject/widget/hero_widget.dart';
import 'package:flutter/material.dart';

class DetailInfo extends StatelessWidget {
  const DetailInfo({Key? key, this.location}) : super(key: key);
  final Location? location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          HeroWidget(
              tag: HeroTag.addressline1(location!),
              child: Text(location!.addressLine1!)),
          SizedBox(height: 8),
          HeroWidget(
              tag: HeroTag.addressLine2(location!),
              child: Text(location!.addressLine2!)),
          SizedBox(height: 8),
          HeroWidget(tag: HeroTag.stars(location!), child: Container())
        ],
      ),
    );
  }
}
